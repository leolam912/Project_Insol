import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_bo/colors.dart' as color;
import 'package:project_bo/data/ordinanceCap6.dart';
import 'package:project_bo/screens/quiz6.dart';
import 'package:project_bo/api/pdf_api.dart';
import 'package:project_bo/data/ordinanceCap6A.dart';
import 'package:project_bo/model/ordinance.dart';
import 'package:project_bo/widget/search_widget.dart';
import 'package:project_bo/screens/PDFViewerPage.dart';
import 'package:project_bo/screens/quiz6.dart';
import 'dart:math';
import '../model/ordinance.dart';

class quizSectionNameScreen extends StatefulWidget {
  String dropdownValueFrom, dropdownValueTo;
  quizSectionNameScreen({Key key,this.dropdownValueFrom,this.dropdownValueTo}) : super(key: key);


  @override
  State<quizSectionNameScreen> createState() => _quizSectionNameScreenState();
}

class _quizSectionNameScreenState extends State<quizSectionNameScreen> {
  int _questionIndex = 0;
  int _numberOfQuestionsAnswered = 1;
  int totalNumberOfQuestions = allsections.length;
  bool isShowAns = false;
  List<int> numberList = [];


  void getQuestionNo() {
    final int _searchIndexFrom = allsections.indexWhere((item) => item.sectionNo == widget.dropdownValueFrom);
    final int _searchIndexTo = allsections.indexWhere((item) => item.sectionNo == widget.dropdownValueTo);
    int currentQuestion = _searchIndexFrom +1;
    int lastQuestion = _searchIndexTo  + 1;
    int TotalQuestion = lastQuestion - currentQuestion+1;
   // print(currentQuestion);
   // print(lastQuestion);
   // print(TotalQuestion);

    totalNumberOfQuestions = TotalQuestion;
  }

  void _nextQuestion() {
    if (numberList.length >= totalNumberOfQuestions) {
      if (isShowAns == true) {
        _resetQuiz();
      }
    };
    if (isShowAns == true) {
      isShowAns = false;

      final int _searchIndexFrom = allsections.indexWhere((item) => item.sectionNo == widget.dropdownValueFrom);
      final int _searchIndexTo = allsections.indexWhere((item) => item.sectionNo == widget.dropdownValueTo);
      int currentQuestion = _searchIndexFrom +1;
      int lastQuestion = _searchIndexTo  + 1;
      Random random = new Random();
      _questionIndex = random.nextInt(_searchIndexTo+1)+_searchIndexFrom;
      while (numberList.contains(_questionIndex)) {
        _questionIndex = random.nextInt(_searchIndexTo+1)+_searchIndexFrom;
      }
      numberList.add(_questionIndex);
      _numberOfQuestionsAnswered = numberList.length;

      print(numberList);

      setState(() {
        isShowAns = false;
        _numberOfQuestionsAnswered;
      });
    } else {
      isShowAns = true;
      setState(() {
        isShowAns = true;
      });

    }

  }

  void _resetQuiz() {
    numberList = [];
    setState(() {
      _questionIndex = 0;
      _numberOfQuestionsAnswered = 1;
    });

  }

  @override
  void initState() {
    super.initState();
    final int _searchIndexFrom = allsections.indexWhere((item) => item.sectionNo == widget.dropdownValueFrom);
    final int _searchIndexTo = allsections.indexWhere((item) => item.sectionNo == widget.dropdownValueTo);
    int currentQuestion = _searchIndexFrom +1;
    int lastQuestion = _searchIndexTo  + 1;
    Random random = new Random();
    _questionIndex = random.nextInt(_searchIndexTo+1)+_searchIndexFrom;
    while (numberList.contains(_questionIndex)) {
      _questionIndex = random.nextInt(_searchIndexTo+1)+_searchIndexFrom;
    }
    numberList.add(_questionIndex);
    print(numberList);

    getQuestionNo();


  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: Container(
          height: 50,
          width: 160,
          child: FloatingActionButton.extended(
            onPressed: () {
              _nextQuestion();
              getQuestionNo();
            },
            label: Text(
              isShowAns?'Next':'Show Answer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: color.AppColor.homePageTitle,
              ),
            ),
            backgroundColor: Colors.white,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 65, left: 30, right: 30),
                width: MediaQuery.of(context).size.width,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back_ios, size: 20,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Cap. 6',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Section ${widget.dropdownValueFrom} to ${widget.dropdownValueTo}',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          '$_numberOfQuestionsAnswered',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Text(
                          ' out of $totalNumberOfQuestions',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(

                          children: [
                            for(int i = 0; i < 80; i++)
                              i.isEven ? Container(
                                width: 3,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color(0xFF839fed),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ) : Container(
                                width: 3,
                                height: 1,
                                color: Colors.white,
                              ),
                          ],

                        ),

                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blueAccent, width: 3),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  color.AppColor.secondPageContainerGradient1stColor,
                                  color.AppColor.secondPageContainerGradient2ndColor,
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    isShowAns?allsections[_questionIndex].sectionNo as String:"",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox (width: 5),
                          Flexible(
                            child: Text(
                              allsections[_questionIndex].sectionNameEng as String,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.amberAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 140,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue[800],
                            ),
                            onPressed: () async {
                              final path = allsections[_questionIndex].pdfUrlEng;
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            child: Text(
                              'View Details',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                      alignment: Alignment.center,
                      color: Colors.blueAccent,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: allsections[_questionIndex].puzzles.map((puzzle) {
                              // later change color based condition
                              Color color;

                              if (allsections[_questionIndex].isDone)
                                color = Colors.green[300];
                              else if (puzzle.hintShow)
                                color = Colors.yellow[100];
                              else if (allsections[_questionIndex].isFull)
                                color = Colors.red;
                              else
                                color = Color(0xff7EE7FD);

                              return InkWell(
                                onTap: () {
                                  if (puzzle.hintShow || allsections[_questionIndex].isDone) return;

                                  allsections[_questionIndex].isFull = false;
                                  puzzle.clearValue();
                                  setState(() {});
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: constraints.biggest.width / 7 - 6,
                                  height: constraints.biggest.width / 7 - 6,
                                  margin: EdgeInsets.all(3),
                                  child: Text(
                                    "${puzzle.currentValue ?? ''}".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          );
                        },
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}

void openPDF(BuildContext context, File file) => Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
);



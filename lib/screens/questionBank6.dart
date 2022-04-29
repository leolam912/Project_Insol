import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_bo/colors.dart' as color;
import 'package:project_bo/api/pdf_api.dart';
import 'package:project_bo/data/ordinanceCap6.dart';
import 'package:project_bo/data/ordinanceCap6A.dart';
import 'package:project_bo/model/ordinance.dart';
import 'package:project_bo/widget/search_widget.dart';
import 'package:project_bo/screens/PDFViewerPage.dart';

import '../model/ordinance.dart';

class questionBank6Screen extends StatefulWidget {
  String dropdownValueFrom, dropdownValueTo;
  questionBank6Screen({Key key,this.dropdownValueFrom,this.dropdownValueTo}) : super(key: key);


  @override
  State<questionBank6Screen> createState() => _questionBank6ScreenState();
}

class _questionBank6ScreenState extends State<questionBank6Screen> {
  int _questionIndex = 0;
  int _numberOfQuestionsAnswered = 1;
  int totalNumberOfQuestions = allsections.length;

  void getQuestionNo() {
    final int _searchIndexFrom = allsections.indexWhere((item) => item.sectionNo == widget.dropdownValueFrom);
    final int _searchIndexTo = allsections.indexWhere((item) => item.sectionNo == widget.dropdownValueTo);
    int currentQuestion = _searchIndexFrom +1;
    int lastQuestion = _searchIndexTo  + 1;
    int TotalQuestion = lastQuestion - currentQuestion +1;
    print(currentQuestion);
    print(lastQuestion);
    print(TotalQuestion);

    totalNumberOfQuestions = TotalQuestion;
  }
  void _previousQuestion() {
    setState(() {
      _questionIndex--;
      _numberOfQuestionsAnswered--;
    });
    if (_numberOfQuestionsAnswered == 0) {
      _resetQuiz();
    }
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex++;
      _numberOfQuestionsAnswered++;
    });
    if (_questionIndex >= totalNumberOfQuestions) {
      _resetQuiz();
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _numberOfQuestionsAnswered = 1;
    });

  }

  void initState() {
    super.initState();
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
                      'Cap.6',
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
                                    allsections[_questionIndex].sectionNo as String,
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
                      padding: EdgeInsets.all(5),
                      height: 150,
                      width: MediaQuery.of(context).size.width,


                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: allsections[_questionIndex].cue1red as String,
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                TextSpan(
                                  text: allsections[_questionIndex].cue2 as String,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                TextSpan(
                                  text: allsections[_questionIndex].cue3red as String,
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                TextSpan(
                                  text: allsections[_questionIndex].cue4 as String,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                TextSpan(
                                  text: allsections[_questionIndex].cue5red as String,
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                TextSpan(
                                  text: allsections[_questionIndex].cue6 as String,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left:20, right:20, bottom:20),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            _previousQuestion();
                            getQuestionNo();
                          },
                          label: Row(
                            children: [Icon(Icons.arrow_left, size:40)],
                          ),

                          backgroundColor: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            _nextQuestion();
                            getQuestionNo();
                          },
                          label: Row(
                            children: [Icon(Icons.arrow_right, size: 40)],
                          ),
                          backgroundColor: Colors.white,
                        ),
                      )
                    ],
                  ),

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
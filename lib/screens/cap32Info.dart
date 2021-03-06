import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_bo/colors.dart' as color;
import 'package:project_bo/api/pdf_api.dart';
import 'package:project_bo/data/ordinanceCap32.dart';
import 'package:project_bo/model/ordinance.dart';
import 'package:project_bo/widget/search_widget.dart';
import 'package:project_bo/screens/PDFViewerPage.dart';

import '../model/ordinance.dart';

class Cap32Info extends StatefulWidget {
  const Cap32Info({Key key}) : super(key: key);

  @override
  State<Cap32Info> createState() => _Cap32InfoState();
}

class _Cap32InfoState extends State<Cap32Info> {

  List<ordinanceModel> sections;
  String query = '';

  bool isEng = true;

  getEng(){
    setState(() {
      isEng = true;
    });
  }

  getChi(){
    setState(() {
      isEng = false;
    });
  }

  @override
  void initState(){
    super.initState();
    sections = all32sections;
  }



  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.AppColor.gradientFirst.withOpacity(0.8),
              color.AppColor.gradientSecond,
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top:65, left:30, right:30),
              width: MediaQuery.of(context).size.width,
              height: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap:(){
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back_ios, size:20,
                            color: color.AppColor.secondPageIconColor),
                      ),
                      Expanded(child: Container()),
                      InkWell(
                        onTap: () {
                          getEng();
                        },
                        child: Container(
                          child: Text(
                            'Eng',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: color.AppColor.homePageTitle,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        child: Text(
                          '/',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      InkWell(
                        onTap: (){
                          getChi();
                        },
                        child: Container(
                          child: Text(
                            '???',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: color.AppColor.homePageTitle,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    isEng?'Cap.32':'???32???',
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.secondPageTitleColor,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        isEng?'Companies (Winding Up and Miscellaneous':'??????(?????????????????????)??????',
                        style: TextStyle(
                          fontSize: 13,
                          color: color.AppColor.secondPageTitleColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 42),
                      Text(
                        isEng?'Provisions) Ordinance':'',
                        style: TextStyle(
                          fontSize: 13,
                          color: color.AppColor.secondPageTitleColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        width: 150,
                        height: 30,
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
                            Icon(Icons.library_books,
                                size: 20,
                                color: color.AppColor.secondPageIconColor),
                            SizedBox(width: 5),
                            Text(
                              isEng?'Section 1 to 368':'1???368???',
                              style: TextStyle(
                                fontSize: 15,
                                color: color.AppColor.secondPageIconColor,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height:20),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                //     borderRadius: BorderRadius.only(
                //       topRight: Radius.circular(70)
                //     ),
              ),
              child: Column(
                children: [
                  buildSearch(),
                  SizedBox(height: 10),
                  Expanded(child: _listView()),
                ],
              ),
            ),)
          ],
        ),

      ),
    );
  }

  _listView() {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        itemCount:sections.length,
        itemBuilder: (_, int index){

          return GestureDetector(
            onTap: () async{
              FocusManager.instance.primaryFocus?.unfocus();
              searchBook(query);
              if (isEng == true) {
                final path = sections[index].pdfUrlEng;
                final file = await PDFApi.loadAsset(path);
                openPDF(context, file);
              }else {
                final path = sections[index].pdfUrlChi;
                final file = await PDFApi.loadAsset(path);
                openPDF(context, file);
              }
              //   if (file == null) return;
              //   openPDF(context, file);
            },
            child: _buildCard(index),
          );
        });
  }
  _buildCard(int index) {
    return Container(

      height: 125,
      width: 200,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 66,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color.AppColor.secondPageContainerGradient1stColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sections[index].sectionNo,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(width: 15),
              Flexible(
                child: Text(
                  isEng?sections[index].sectionNameEng:sections[index].sectionNameChi,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

            ],

          ),
          SizedBox(height: 18),
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

        ],
      ),
    );
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
  );

  Widget buildSearch() => SearchWidget(
    text: query,
    hintText: 'Section No / Section Name',
    onChanged: searchBook,

  );

  void searchBook(String query) {
    final sections = all32sections.where((u) {
      final sectionNoLower = u.sectionNo.toLowerCase();
      final sectionNameEngLower = u.sectionNameEng.toLowerCase();
      final sectionNameChiLower = u.sectionNameChi;
      final searchLower = query.toLowerCase();

      return sectionNoLower.contains(searchLower) ||
          sectionNameEngLower.contains(searchLower) ||
          sectionNameChiLower.contains(searchLower) ;
    }).toList();

    setState(() {
      this.query = query;
      this.sections = sections;
    });
  }



  Future<List<ordinanceModel>> ReadJsonData() async {
    final file = await rootBundle.loadString('json/Cap6.json');
    final json = jsonDecode(file);
    return json.map((e) => ordinanceModel.fromJson(e)).toList();

  }


}

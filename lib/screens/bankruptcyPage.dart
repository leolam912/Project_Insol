import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_bo/screens/cap6Info.dart';
import 'package:project_bo/screens/cap6AInfo.dart';
import 'package:project_bo/screens/cap6BInfo.dart';
import 'package:project_bo/screens/cap6CInfo.dart';
import 'package:project_bo/screens/cap6EInfo.dart';
import 'package:project_bo/screens/homePage.dart';
import 'package:project_bo/colors.dart' as color;
import 'package:project_bo/screens/quiz6.dart';
import 'package:project_bo/screens/quiz6A.dart';

class BankruptcyPage extends StatefulWidget {
  const BankruptcyPage({Key key}) : super(key: key);

  @override
  State<BankruptcyPage> createState() => _BankruptcyPageState();
}

class _BankruptcyPageState extends State<BankruptcyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
        appBar: AppBar(
          title: Text('Bankruptcy'),
          backgroundColor: Colors.blueAccent,
          leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          onTap: () {
            Get.back();
          } ,
          ),
        ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/QuizPageBackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,

              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color.AppColor.gradientFirst.withOpacity(0.8),
                          color.AppColor.gradientSecond.withOpacity(0.9),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(80)
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(5,10),
                            blurRadius: 20,
                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(()=> Cap6Info());
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right:30),
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text(
                                      'Cap. 6',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.yellowAccent
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right,
                                            color:Colors.white, size: 30,
                                          ),
                                        ),
                                        Text(
                                          'Bankruptcy Ordinance',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: color.AppColor.homePageContainerTextSmall
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    boxShadow: [
                                      BoxShadow(
                                        color: color.AppColor.gradientFirst,
                                        blurRadius: 10,
                                        offset: Offset(4,8),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.play_circle_fill,
                                    color:Colors.white, size: 30,
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color.AppColor.gradientFirst.withOpacity(0.8),
                          color.AppColor.gradientSecond.withOpacity(0.9),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(80)
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(5,10),
                            blurRadius: 20,
                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(()=> Cap6AInfo());
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right:30),
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text(
                                      'Cap. 6A',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.yellowAccent
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right,
                                            color:Colors.white, size: 30,
                                          ),
                                        ),
                                        Text(
                                          'Bankruptcy Rules',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: color.AppColor.homePageContainerTextSmall
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    boxShadow: [
                                      BoxShadow(
                                        color: color.AppColor.gradientFirst,
                                        blurRadius: 10,
                                        offset: Offset(4,8),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.play_circle_fill,
                                    color:Colors.white, size: 30,
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color.AppColor.gradientFirst.withOpacity(0.8),
                          color.AppColor.gradientSecond.withOpacity(0.9),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(80)
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(5,10),
                            blurRadius: 20,
                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(()=> Cap6BInfo());
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right:30),
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text(
                                      'Cap. 6B',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.yellowAccent
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right,
                                            color:Colors.white, size: 30,
                                          ),
                                        ),
                                        Text(
                                          'Bankruptcy (Forms) Rules',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: color.AppColor.homePageContainerTextSmall
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    boxShadow: [
                                      BoxShadow(
                                        color: color.AppColor.gradientFirst,
                                        blurRadius: 10,
                                        offset: Offset(4,8),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.play_circle_fill,
                                    color:Colors.white, size: 30,
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color.AppColor.gradientFirst.withOpacity(0.8),
                          color.AppColor.gradientSecond.withOpacity(0.9),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(80)
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(5,10),
                            blurRadius: 20,
                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(()=> Cap6CInfo());
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right:30),
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text(
                                      'Cap. 6C',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.yellowAccent
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right,
                                            color:Colors.white, size: 30,
                                          ),
                                        ),
                                        Text(
                                          'Bankruptcy (Fees and Percentages) Order ',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: color.AppColor.homePageContainerTextSmall
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    boxShadow: [
                                      BoxShadow(
                                        color: color.AppColor.gradientFirst,
                                        blurRadius: 10,
                                        offset: Offset(4,8),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.play_circle_fill,
                                    color:Colors.white, size: 30,
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color.AppColor.gradientFirst.withOpacity(0.8),
                          color.AppColor.gradientSecond.withOpacity(0.9),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(80)
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(5,10),
                            blurRadius: 20,
                            color: color.AppColor.gradientSecond.withOpacity(0.2)
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(()=> Cap6EInfo());
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right:30),
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text(
                                      'Cap. 6E',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.yellowAccent
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right,
                                            color:Colors.white, size: 30,
                                          ),
                                        ),
                                        Text(
                                          'Proof of Debts Rules ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: color.AppColor.homePageContainerTextSmall
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    boxShadow: [
                                      BoxShadow(
                                        color: color.AppColor.gradientFirst,
                                        blurRadius: 10,
                                        offset: Offset(4,8),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.play_circle_fill,
                                    color:Colors.white, size: 30,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blueAccent, width: 3),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Revision',
                          style: TextStyle(
                            color: color.AppColor.homePageTitle,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(()=> quiz6Screen());
                              },
                              child: Container(
                                height: 50,
                                width: 100,
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
                                        'Cap. 6',
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
                            ),
                            SizedBox (width: 5),
                            InkWell(
                              onTap: () {
                                Get.to(()=> quiz6AScreen());
                              },
                              child: Container(
                                height: 50,
                                width: 100,
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
                                        'Cap. 6A',
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
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

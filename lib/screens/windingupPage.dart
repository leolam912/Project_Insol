import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_bo/screens/cap32Info.dart';
import 'package:project_bo/screens/cap32CInfo.dart';
import 'package:project_bo/screens/cap32HInfo.dart';
import 'package:project_bo/screens/cap32IInfo.dart';
import 'package:project_bo/screens/cap32JInfo.dart';
import 'package:project_bo/screens/cap32KInfo.dart';
import 'package:project_bo/colors.dart' as color;

class WindingUpPage extends StatefulWidget {
  const WindingUpPage({Key key}) : super(key: key);

  @override
  State<WindingUpPage> createState() => _WindingUpPageState();
}

class _WindingUpPageState extends State<WindingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      appBar: AppBar(
        title: Text('Compulsory Winding-up'),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
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
                        Get.to(()=> Cap32Info());
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
                                      'Cap. 32',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.yellowAccent,
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
                                          'Companies (Winding Up and',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: color.AppColor.homePageContainerTextSmall
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 42),
                                        Text(
                                          'Miscellaneous Provisions) Ordinance',
                                          style: TextStyle(
                                              fontSize: 13,
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
                    height: 80,
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
                        Get.to(()=> Cap32CInfo());
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
                                      'Cap. 32C',
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
                                          'Companies (Fees and Percentages)',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: color.AppColor.homePageContainerTextSmall
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width:42),
                                        Text(
                                          'Order',
                                          style: TextStyle(
                                              fontSize: 13,
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
                        Get.to(()=> Cap32HInfo());
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
                                      'Cap. 32H',
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
                                          'Companies (Winding-up) Rules',
                                          style: TextStyle(
                                              fontSize: 13,
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
                    height: 80,
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
                        Get.to(()=> Cap32IInfo());
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
                                      'Cap. 32I',
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
                                          'Companies (Disqualification Orders)',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: color.AppColor.homePageContainerTextSmall
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 42),
                                        Text(
                                          'Regulation',
                                          style: TextStyle(
                                              fontSize: 13,
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
                    height: 80,
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
                        Get.to(()=> Cap32JInfo());
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
                                      'Cap. 32J',
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
                                          'Companies (Reports on Conduct of',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: color.AppColor.homePageContainerTextSmall
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width:42),
                                        Text(
                                          'Directors) Regulation',
                                          style: TextStyle(
                                              fontSize: 13,
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
                    height: 80,
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
                        Get.to(()=> Cap32KInfo());
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
                                      'Cap. 32K',
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
                                          'Companies (Disqualification of',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: color.AppColor.homePageContainerTextSmall
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width:42),
                                        Text(
                                          'Directors) Proceedings Rules',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

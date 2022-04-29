import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_bo/screens/bankruptcyPage.dart';
import 'package:project_bo/screens/windingupPage.dart';
import 'package:project_bo/colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/welcome.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right:20, top:20, left:20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      color: color.AppColor.homePageTitle,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                  height: 230,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 230,
                    padding: const EdgeInsets.only(left:25, right:25),
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
                                  Get.to(() => BankruptcyPage());
                                },
                            child: Container(
                              padding: const EdgeInsets.only(left: 20, right:30),
                              child: Row(
                                children: [
                                  Text(
                                    'Bankruptcy ',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: color.AppColor.homePageContainerTextSmall
                                    ),
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
                                      color:Colors.white, size: 60,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox (height: 30),
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
                                  Get.to(() => WindingUpPage());
                            },
                            child: Container(
                              padding: const EdgeInsets.only(left: 20, right:30),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Compulsory Winding-up',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: color.AppColor.homePageContainerTextSmall
                                        ),
                                      ),
                                      Text(
                                        'of Companies',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: color.AppColor.homePageContainerTextSmall
                                        ),
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
                                      color:Colors.white, size: 60,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

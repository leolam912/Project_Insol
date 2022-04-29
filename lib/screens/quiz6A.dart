import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_bo/data/ordinanceCap6A.dart';
import 'package:project_bo/screens/questionBank6A.dart';
import 'package:project_bo/screens/quizSection6ANo.dart';
import 'package:project_bo/model/question.dart';
import 'package:project_bo/colors.dart' as color;
import 'package:project_bo/screens/quizSection6AName.dart';

class quiz6AScreen extends StatefulWidget {
  const quiz6AScreen({Key key}) : super(key: key);

  @override
  State<quiz6AScreen> createState() => _quiz6AScreenState();
}

class _quiz6AScreenState extends State<quiz6AScreen> {

  String dropdownValueFrom = '1';
  String dropdownValueTo = '42';

  String a;
  int i;




  void createList () {
    final int _searchIndexFrom = all6Asections.indexWhere((item) => item.sectionNo == dropdownValueFrom);
    final int _searchIndexTo = all6Asections.indexWhere((item) => item.sectionNo == dropdownValueTo);
    List<String> audioList = [];
    for (i = _searchIndexFrom; i < _searchIndexTo; i++) {
      a = listItems[i];
      audioList.add("$i");
    }
    print(audioList);
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
        appBar: AppBar(
          title: Text('Revision - Cap. 6A'),
          backgroundColor: Colors.blueAccent,
          leading: GestureDetector(
            child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
            onTap: () {
              Get.back();
            } ,
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => questionbank6AScreen(dropdownValueFrom: this.dropdownValueFrom, dropdownValueTo: this.dropdownValueTo),
                ));
          },
          label: Row(
            children: [ Text(
              'Question Bank',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            ],
          ),
          backgroundColor: color.AppColor.secondPageContainerGradient2ndColor,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 70,
                          child: Text(
                            'From: ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellowAccent,
                            ),
                          ),
                        ),
                        SizedBox (width: 10),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.blueAccent)),
                          child: DropdownButton<String>(
                            dropdownColor: Colors.white,
                            value: dropdownValueFrom,
                            icon: Icon(                // Add this
                              Icons.arrow_drop_down,  // Add this
                              color: Colors.blue,   // Add this
                            ),
                            hint: Text("from"),
                            items: listItems.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Container(
                                  width: 80,
                                  padding: EdgeInsets.only(left:15, right: 15),
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      fontSize:20,
                                      color: color.AppColor.homePageTitle,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String newValueFrom) {
                              setState(() {
                                dropdownValueFrom = newValueFrom;
                              });
                            },
                          ),
                        ),

                      ],
                    ),
                    SizedBox (height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 70,
                          child: Text(
                            'To: ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellowAccent,
                            ),

                          ),
                        ),
                        SizedBox (width: 10),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.blueAccent)),
                          child: DropdownButton<String>(
                            dropdownColor: Colors.white,
                            value: dropdownValueTo,
                            icon: Icon(                // Add this
                              Icons.arrow_drop_down,  // Add this
                              color: Colors.blue,   // Add this
                            ),
                            hint: Text("from"),
                            items: listItems.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Container(
                                  width: 80,
                                  padding: EdgeInsets.only(left:15, right: 15),
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      fontSize:20,
                                      color: color.AppColor.homePageTitle,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String newValueTo) {
                              setState(() {
                                dropdownValueTo = newValueTo;
                              });
                            },
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                width: 300,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueAccent, width: 3),
                ),

                child: Align(
                  child: Container(
                      height: 230,
                      padding: const EdgeInsets.only(left:10, right:10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Audio (coming soon)',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 75,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent[700],
                                  borderRadius: BorderRadius.circular(10),
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
                                    //play audio
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 10, right:10, top: 10, bottom:10),
                                    child: Icon(
                                      Icons.play_arrow,
                                      color:Colors.white, size: 30,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                width: 75,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent[700],
                                  borderRadius: BorderRadius.circular(10),
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
                                    createList();
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 10, right:10, top: 10, bottom:10),
                                    child: Icon(
                                      Icons.stop,
                                      color:Colors.white, size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: 300,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueAccent, width: 3),
                ),

                child: Align(
                  child: Container(
                      height: 230,
                      padding: const EdgeInsets.only(left:25, right:25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Random Questions',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 220,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent[700],
                                  borderRadius: BorderRadius.circular(10),
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => quizSection6ANameScreen(dropdownValueFrom: this.dropdownValueFrom, dropdownValueTo: this.dropdownValueTo),
                                        ));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 10, right:10, top: 10, bottom:10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'with',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: color.AppColor.homePageContainerTextSmall
                                          ),
                                        ),
                                        Text(
                                          ' Section Name',
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.yellowAccent,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 220,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent[700],
                                  borderRadius: BorderRadius.circular(10),
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => quizSection6ANoScreen(dropdownValueFrom: this.dropdownValueFrom, dropdownValueTo: this.dropdownValueTo),
                                        ));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 10, right:10, top: 10, bottom:10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'with',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: color.AppColor.homePageContainerTextSmall
                                          ),
                                        ),
                                        Text(
                                          ' Section No',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.yellowAccent
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ],
                      )
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

import 'package:flutter/material.dart';
import 'package:flutter_ui/Fourth%20Ui/services/auth.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyStorage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfcfc),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Icon(
                      Icons.search,
                      size: 25,
                    ),
                  ),
                ],
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "289 GB",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "free",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  CircularPercentIndicator(
                    radius: 200,
                    animation: true,
                    percent: 0.68,
                    backgroundColor: Color(0xfff2f2f2),
                    lineWidth: 20,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "68%",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff8254fc),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "used",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    progressColor: Color(0xff8254fc),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "785 GB",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "used",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                "Category",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xffd8fada),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Icon(
                      Icons.document_scanner_outlined,
                      size: 30,
                      color: Color(0xff50f361),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xffdcebfd),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Icon(
                      Icons.image,
                      size: 30,
                      color: Color(0xff61abff),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xfffcdcee),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Icon(
                      Icons.play_arrow_sharp,
                      size: 30,
                      color: Color(0xffff63b7),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xfffcf2d8),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Icon(
                      Icons.music_note,
                      size: 30,
                      color: Color(0xfffecc47),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Docs",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Images",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Videos",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Music",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Recent",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff55e061),
                              Color(0xff2fbc3d),
                            ],
                          ),
                        ),
                        child: Icon(
                          Icons.insert_drive_file_outlined,
                          size: 35,
                          color: Color(0xfffecc47),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Competitive Analysis.docs",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "2.6 MB",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.more_vert_outlined)),
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

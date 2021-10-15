import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:flutter_ui/Fourth%20Ui/folder_card.dart';
import 'services/file.dart';

class MyCloud extends StatefulWidget {
  @override
  _MyCloudState createState() => _MyCloudState();
}

class _MyCloudState extends State<MyCloud> {
  @override
  Widget build(BuildContext context) {
    File? file;
    UploadTask? task;
    String filename = "No File is selected";
    selectfile() async {
      final result = await FilePicker.platform.pickFiles(allowMultiple: true);
      if (result == null) {
        return print("error");
      } else {
        final path = result.files.single.path;
        setState(() {
          file = File(path!);
          filename = basename(file!.path);
        });
      }
    }

    uploadfile() {
      if (file == null) {
        return;
      }
      final destination = "files/$filename";
      task = MYFirebaseStorage.uploadFile(destination, file!);
      setState(() {});
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffcfcfc),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 40, horizontal: 10)),
                  Text(
                    "My Cloud",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 180,
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
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff9370f4),
                      Color(0xff7b4cfd),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: Icon(
                            Icons.cloud,
                            size: 120,
                            color: Colors.white,
                          ),
                        ),
                        // Padding(padding: EdgeInsets.only(left: 40)),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                " Cloud",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "5126 files",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.sync,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    "Sync active",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "485GB of 2TB used",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        width: 250,
                        child: LinearProgressIndicator(
                          value: 0.23,
                          minHeight: 10,
                          color: Color(0xfff994fa),
                          backgroundColor: Color(0xfff3f2f2),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xfff3f3f3),
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 18)),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff8c65f7)),
                      child: Icon(
                        Icons.file_upload,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    // Padding(padding: EdgeInsets.only(left: 18)),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          "Unlimited storage",
                          style: TextStyle(fontSize: 14),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          " Rp. 150.000/mo",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(left: 18)),
                    Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xfffda8fe),
                              Color(0xfffc7aff),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ]),
                      child: Center(
                        child: Text(
                          "upgrade",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Container(
              //   height: 40,
              //   width: 100,
              //   decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //         colors: [
              //           Color(0xfffda8fe),
              //           Color(0xfffc7aff),
              //         ],
              //       ),
              //       borderRadius: BorderRadius.circular(10)),
              //   child: Text(
              //     "Select A File ",
              //     style: TextStyle(fontSize: 20),
              //   ),
              // ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff7b4cfd),
                ),
                onPressed: () {
                  selectfile();
                },
                child: Text("Select A File"),
              ),
              Text(filename),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff7b4cfd),
                ),
                onPressed: () {
                  uploadfile();
                },
                child: Text("Upload File"),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Folders",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FolderCard(
                        name: 'Research',
                        items: 78,
                      ),
                      FolderCard(
                        name: 'Homework',
                        items: 154,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FolderCard(
                        name: 'Guideline',
                        items: 56,
                      ),
                      FolderCard(
                        name: 'Freelance',
                        items: 154,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

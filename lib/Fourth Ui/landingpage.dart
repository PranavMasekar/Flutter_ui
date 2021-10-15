import 'package:flutter/material.dart';
import 'package:flutter_ui/Fourth%20Ui/cloudpage.dart';
// import 'package:flutter_ui/Fourth%20Ui/homepage.dart';
import 'package:flutter_ui/Fourth%20Ui/storage.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int itemindex = 0;
  List<Widget> mylist = [
    // HomePage(),
    MyStorage(),
    MyCloud(),
  ];

  void ontap(int index) {
    setState(() {
      itemindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mylist.elementAt(itemindex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: "Folders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: "Cloud",
          ),
        ],
        currentIndex: itemindex,
        onTap: ontap,
      ),
    );
  }
}

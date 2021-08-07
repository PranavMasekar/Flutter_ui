import 'package:flutter/material.dart';
import 'package:flutter_ui/Fourth%20Ui/landingpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff885ff8),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 450,
                  width: 200,
                  child: Image(
                    image: AssetImage(
                      "images/files.png",
                    ),
                  ),
                ),
              ),
              Text(
                "Manage Your Files ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "in a simple way",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You could integrate your local files with the ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Text(
                "files in cloud storage",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 70.0,
                height: 80.0,
                child: new RawMaterialButton(
                  onPressed: () {
                    _navigateToNextScreen(context);
                  },
                  fillColor: Color(0xfffb83fe),
                  shape: new CircleBorder(),
                  elevation: 10.0,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    size: 35,
                    color: Colors.white,
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

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyPage()));
}

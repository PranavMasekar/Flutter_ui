import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_ui/Fourth%20Ui/landingpage.dart';

import 'services/auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> checkuserlog() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    // ignore: await_only_futures
    final user = await auth.currentUser;
    if (user != null) {
      name = user.displayName.toString();
      email = user.email.toString();
      imgurl = user.photoURL.toString();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyPage()));
    }
  }

  @override
  void initState() {
    super.initState();
    checkuserlog();
  }

  signInMethod() async {
    await signin();
    // constant.name = (await LocalData.getname())!;
    // constant.email = (await LocalData.getemail())!;
    // constant.img = (await LocalData.getimg())!;
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyPage()));
  }

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
              SignInButton(Buttons.Google, onPressed: () {
                signInMethod();
              })
            ],
          ),
        ),
      ),
    );
  }
}

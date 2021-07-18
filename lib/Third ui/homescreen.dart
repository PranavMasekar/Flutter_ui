import 'package:flutter/material.dart';
import 'package:flutter_ui/Third%20ui/appbar.dart';
import 'package:flutter_ui/Third%20ui/cards.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: Color(0xff1ae7e5),
        onPressed: () {},
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff545567), Color(0xff2c2c38)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),
          Column(
            children: [
              MyAppBar(),
              Mycard(
                color1: Color(0xffffca51),
                color2: Color(0xffff7c03),
                country: "New York",
                temp: 30,
                url: "images/weather.png",
                condition: "Sunny",
              ),
              Mycard(
                color1: Color(0xff2afdb7),
                color2: Color(0xff08c893),
                country: "Mumbai",
                temp: 25,
                url: "images/weather.png",
                condition: "Rainy",
              ),
              Mycard(
                color1: Color(0xffc064dd),
                color2: Color(0xff5d28fe),
                country: "Sydney",
                temp: 35,
                url: "images/storm.png",
                condition: "Stormy",
              ),
              Mycard(
                color1: Color(0xff5581f1),
                color2: Color(0xff1254fc),
                country: "Tokyo",
                url: "images/weather.png",
                temp: 40,
                condition: "Cold",
              ),
            ],
          )
        ],
      ),
    );
  }
}

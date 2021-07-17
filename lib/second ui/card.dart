import 'dart:ui';
// ignore: import_of_legacy_library_into_null_safe
import 'package:slider_button/slider_button.dart';
import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  Color color;
  Color color2;
  Mycard({required this.color, required this.color2});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(20),
      width: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Manager",
                style: TextStyle(color: color2, fontSize: 15),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(height: 13),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Large ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "92",
                style: TextStyle(
                    color: Color(0xffcfff00),
                    fontSize: 23,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Files",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Items",
                style: TextStyle(
                    color: color2, fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(height: 13),
          Container(
            height: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: 0.7,
                backgroundColor: color2,
                valueColor: AlwaysStoppedAnimation(Color(0xffcfff00)),
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "72.40GB / 128GB",
              style: TextStyle(color: Colors.white, fontSize: 9),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            child: SliderButton(
              action: () {},
              backgroundColor: color2,
              label: Text(
                ">>>",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                height: double.infinity,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18)),
                child: Center(
                  child: Text(
                    "Clean",
                    style: TextStyle(
                      color: color2,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

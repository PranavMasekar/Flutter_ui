import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ui/styles.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 170.0),
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80.0),
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(),
          SizedBox(
            height: 10,
          ),
          Text(
            "Pranav Masekar",
            style: heading4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 16.0,
                color: Colors.grey,
              ),
              Text(
                "Pune",
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "121",
                    style: CountText,
                  ),
                  Text(
                    "Posts",
                    style: followText,
                  ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  Text(
                    "20M",
                    style: CountText,
                  ),
                  Text(
                    "Followers",
                    style: followText,
                  ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  Text(
                    "10",
                    style: CountText,
                  ),
                  Text(
                    "Following",
                    style: followText,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

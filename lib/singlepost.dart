import 'package:flutter/material.dart';
import 'package:flutter_ui/styles.dart';

class SinglePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              topLeft: Radius.circular(50.0),
            ),
          ),
          margin: EdgeInsets.only(left: 80.0, right: 5.0, bottom: 30.0),
          height: 150,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              topLeft: Radius.circular(50.0),
            ),
            child: Image.asset(
              "images/download.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Dron The Topper",
                style: PostText,
              ),
              Row(
                children: [
                  Icon(
                    Icons.comment_outlined,
                    size: 16.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "15",
                    style: PostText,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 16.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "150k",
                    style: PostText,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

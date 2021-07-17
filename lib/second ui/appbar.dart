import 'package:flutter/material.dart';

class Myappbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_left,
                size: 40,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 18),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
            )
          ],
        ),
      ),
    );
  }
}

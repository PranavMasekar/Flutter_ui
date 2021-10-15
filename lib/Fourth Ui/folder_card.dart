import 'package:flutter/material.dart';

class FolderCard extends StatefulWidget {
  final String name;
  final int items;
  FolderCard({required this.name, required this.items});

  @override
  _FolderCardState createState() => _FolderCardState();
}

class _FolderCardState extends State<FolderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 160,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 18),
            child: Container(
              height: 50,
              width: 50,
              child: Icon(
                Icons.folder,
                size: 65,
                color: Color(0xffefbc34),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "  ${widget.name}",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "  ${widget.items} items",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

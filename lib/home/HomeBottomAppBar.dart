import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomAppBar extends StatefulWidget {
  @override
  _HomeBottomAppBarState createState() => _HomeBottomAppBarState();
}

class _HomeBottomAppBarState extends State<HomeBottomAppBar> {
  var _position = 0;
  final itemsMap = {
    "花式": "花式",
    "竞速": "竞速",
    "自制": "自制",
    "教程": "教程",
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height *(180/ 2400),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 5,
            color: Colors.pink[100],
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            color: Colors.pink[300],
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            color: Colors.pink[500],
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            color: Colors.pink[700],
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            color: Colors.pink[900],
          ),
        ],
      ),
    );
  }
}

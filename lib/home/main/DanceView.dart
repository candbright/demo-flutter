import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DanceView extends StatefulWidget {
  @override
  _DanceViewState createState() => _DanceViewState();
}
class _DanceViewState extends State<DanceView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue[100],
      height: MediaQuery
          .of(context)
          .size
          .height  *(1980/ 2400),
    );
  }
}
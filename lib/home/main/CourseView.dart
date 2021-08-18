import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseView extends StatefulWidget {
  @override
  _CourseViewState createState() => _CourseViewState();
}
class _CourseViewState extends State<CourseView> {
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
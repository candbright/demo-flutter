import 'package:appdemo1/home/main/AddView.dart';
import 'package:appdemo1/home/main/CollectView.dart';
import 'package:appdemo1/home/main/CourseView.dart';
import 'package:appdemo1/home/main/DanceView.dart';
import 'package:appdemo1/home/main/SpeedView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeMainView extends StatefulWidget {
  @override
  _HomeMainViewState createState() => _HomeMainViewState();
}

class _HomeMainViewState extends State<HomeMainView> {
  String item = "Dance";

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      height: MediaQuery.of(context).size.height * (1980 / 2400),
      child: selectMainView(item),
    );
  }

  Widget selectMainView(String item) {
    if (item == "Dance") {
      return DanceView();
    }else
    if (item == "Speed") {
      return SpeedView();
    }else
    if (item == "Add") {
      return AddView();
    }else
    if (item == "Course") {
      return CourseView();
    }else
    if (item == "Collect") {
      return CollectView();
    }else{
      return errorView();
    }
  }

  Widget errorView(){
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      height: MediaQuery.of(context).size.height * (1980 / 2400),
    );
  }
}

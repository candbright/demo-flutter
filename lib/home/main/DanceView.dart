import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DanceView extends StatefulWidget {
  @override
  _DanceViewState createState() => _DanceViewState();
}
class _DanceViewState extends State<DanceView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue[100],
        ));
  }
}
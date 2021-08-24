import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomeView extends StatefulWidget {
  @override
  _MyHomeViewState createState() => _MyHomeViewState();
}
class _MyHomeViewState extends State<MyHomeView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue[500],
        ));
  }
}
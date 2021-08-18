import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddView extends StatefulWidget {
  @override
  _AddViewState createState() => _AddViewState();
}
class _AddViewState extends State<AddView> {
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpeedView extends StatefulWidget {
  @override
  _SpeedViewState createState() => _SpeedViewState();
}
class _SpeedViewState extends State<SpeedView> {
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
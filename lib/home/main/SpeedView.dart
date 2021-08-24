import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpeedView extends StatefulWidget {
  @override
  _SpeedViewState createState() => _SpeedViewState();
}
class _SpeedViewState extends State<SpeedView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue[200],
        ));
  }
}
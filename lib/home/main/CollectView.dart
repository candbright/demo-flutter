import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollectView extends StatefulWidget {
  @override
  _CollectViewState createState() => _CollectViewState();
}
class _CollectViewState extends State<CollectView> {
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
import 'package:appdemo1/bean/ItemBean.dart';
import 'package:appdemo1/home/HomeMainView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomAppBar extends StatefulWidget {
  @override
  _HomeBottomAppBarState createState() => _HomeBottomAppBarState();
}

class _HomeBottomAppBarState extends State<HomeBottomAppBar> {
  var iconList = icons.toList();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * (180 / 2400),
      child: bottomRow(),
    );
  }

  Row bottomRow() {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 5,
          color: Colors.white,
          child: Icon(
            iconList[0].iconId,
            color: iconList[0].color,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 5,
          color: Colors.white,
          child: Icon(
            iconList[1].iconId,
            color: iconList[1].color,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 5,
          color: Colors.white,
          child: Icon(
            iconList[2].iconId,
            color: iconList[2].color,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 5,
          color: Colors.white,
          child: Icon(
            iconList[3].iconId,
            color: iconList[3].color,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 5,
          color: Colors.white,
          child: Icon(
            iconList[4].iconId,
            color: iconList[4].color,
          ),
        ),
      ],
    );
  }




}

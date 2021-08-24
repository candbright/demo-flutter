import 'package:appdemo1/bean/IconBean.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomAppBar extends StatefulWidget {
  @override
  _HomeBottomAppBarState createState() => _HomeBottomAppBarState();
}

class _HomeBottomAppBarState extends State<HomeBottomAppBar> {
  var _position = 0;
  var icons = bottomIcon.toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery
          .of(context)
          .size
          .height * (180 / 2400),
      child: Row(
        children: [
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width / 5,
            color: Colors.white,
            child: Icon(
              icons[0].iconId,
              color: icons[0].color,
            ),
          ),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width / 5,
            color: Colors.white,
            child: Icon(
              icons[1].iconId,
              color: icons[1].color,
            ),
          ),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width / 5,
            color: Colors.white,
            child: Icon(
              icons[2].iconId,
              color: icons[2].color,
            ),
          ),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width / 5,
            color: Colors.white,
            child: Icon(
              icons[3].iconId,
              color: icons[3].color,
            ),
          ),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width / 5,
            color: Colors.white,
            child: Icon(
              icons[4].iconId,
              color: icons[4].color,
            ),
          ),
        ],
      ),
    );
  }
  /*int _curIndex = 0;
  var bottomNavigationBar = BottomNavigationBar(
    items: bottomIcon.map((item) {
      return BottomNavigationBarItem(
          title: Text(
            item.info,
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
          icon: Icon(
            item.iconId,
            color: item.color,
          ),
          backgroundColor: Color(0xffffffff));
    }).toList(),
    currentIndex: _curIndex,
    onTap: _onTapBNB,
  );

  void _onTapBNB(int position) {
    _curIndex = position;
    setState(() {});
  }*/
}
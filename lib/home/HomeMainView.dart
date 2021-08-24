import 'package:appdemo1/bean/ItemBean.dart';
import 'package:appdemo1/home/HomeTopAppBar.dart';
import 'package:appdemo1/home/main/AddView.dart';
import 'package:appdemo1/home/main/MyHomeView.dart';
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
  var _position = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          selectTopView(_position),
          selectMainView(_position),
          bottomNavigationBar(),
        ],
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      items: icons.map((item) {
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
      currentIndex: _position,
      onTap: _onTapBNB,
    );
  }

  void _onTapBNB(int position) {
    _position = position;
    setState(() {});
  }

  Widget selectMainView(int position) {
    if (position == 0) {
      return DanceView();
    } else if (position == 1) {
      return SpeedView();
    } else if (position == 2) {
      return AddView();
    } else if (position == 3) {
      return CourseView();
    } else if (position == 4) {
      return MyHomeView();
    } else {
      return errorView();
    }
  }

  Widget selectTopView(position) {
    if(position == 0){
      return HomeTopAppBar();
    }else{
      return blankAppBar();
    }
  }

  Widget errorView() {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
    );
  }
  Widget blankAppBar() {
    return Container(
      width: 0,
      height: 0,
    );
  }
}



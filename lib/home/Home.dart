import 'package:appdemo1/home/HomeBottomAppBar.dart';
import 'package:appdemo1/home/HomeTopAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeMainView.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            HomeTopAppBar(),
            HomeMainView(),
            HomeBottomAppBar(),
          ],
        ));
  }
}

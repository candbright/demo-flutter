import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeBottomAppBar.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          HomeBottomAppBar(),
        ],
      )

    );
  }

}
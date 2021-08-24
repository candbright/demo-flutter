import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTopAppBar extends StatefulWidget {
  @override
  _HomeTopAppBarState createState() => _HomeTopAppBarState();
}

class _HomeTopAppBarState extends State<HomeTopAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: MediaQuery.of(context).size.height * (220 / 2400),
      child: AppBar(
        elevation: 2,
        leading: _createLeading(),
        title: _createTitle(),
        actions: [_createMenu()],
      ),
    );
  }

  Widget _createLeading() {
    return Container(
      color: Colors.grey[300],
    );
  }

  Widget _createTitle() {
    return Container(

      height: MediaQuery.of(context).size.height * (220 / 2400),
      color: Colors.grey[400],
    );
  }

  Widget _createMenu() {
    return Container(
      width: MediaQuery.of(context).size.width / 5,
      color: Colors.grey[500],
    );
  }
}

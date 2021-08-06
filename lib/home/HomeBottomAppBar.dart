import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomAppBar extends StatefulWidget{

  @override
  _HomeBottomNavigationBarState createState() => _HomeBottomNavigationBarState();

}

class _HomeBottomNavigationBarState extends State<HomeBottomAppBar> {

  var _position = 0;
  var _location = FloatingActionButtonLocation.centerDocked;
  final itemsMap = {
    "花式": "花式",
    "竞速": "竞速",
    "自制": "自制",
    "教程": "教程",
  };

  late PageController _controller;
  bool get isCenter =>_location == FloatingActionButtonLocation.centerDocked;
  List<String> get info =>itemsMap.keys.toList();

  @override
  void initState(){
    _controller = PageController(
      initialPage: _position,
    );

    super.initState();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar:_buildAppTopBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).pushNamed('routeName'),
          mini: false,
          child: Icon(Icons.airplanemode_active),
        ),
        bottomNavigationBar: _buildBottomAppBar(),
        floatingActionButtonLocation: _location,
        body: _buildContent(),
      ),
    );
  }

  /// 顶部导航栏
  AppBar _buildAppTopBar(){
    return AppBar(
      toolbarHeight: 50,
      title: Text("e舞成名"),
      leading: BackButton(),
      actions: <Widget>[
      ],
      elevation: 2,
      centerTitle: true,
    );
  }

  /// 底部导航栏
  Widget _buildBottomAppBar() {
    return BottomAppBar(
      elevation: 1,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: info.asMap().keys.map((e) => _buildChild(e)).toList()..insertAll(isCenter ? 2 : 4, [SizedBox(width: 30)]),
      ),
    );
  }

  ///主界面
  Container _buildContent() {
    return Container(
      alignment: Alignment.center,
      child:PageView(
        controller: _controller,
        onPageChanged: (position){
          setState(()=>_position = position);
        },
        children: [
          Container(
            color: Colors.pink[100],
          ),
          Container(
            color: Colors.pink[300],
          ),
          Container(
            color: Colors.pink[500],
          ),
          Container(
            color: Colors.pink[700],
          ),
        ],
      ),
    );
  }

  /// 底部导航栏内部元素
  Widget _buildChild(int i){
    var active = i == _position;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          setState(()=>_position = i);
          _controller.jumpToPage(i);
        },
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          children: [
            Text(
              info[i],
              style: TextStyle(
                  color: active?Colors.black:Colors.grey[400],
                  fontSize: 24,
                  fontFamily:'zixin',
              ),
            ),
          ]
        ),
      ),
    );
  }



}



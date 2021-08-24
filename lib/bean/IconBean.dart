import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../res/iconfont.dart';

class IconBean {
  Color color;
  IconData iconId;
  String info;

  IconBean(this.color, this.iconId, this.info);
}

//底部栏图标信息
var bottomIcon = [
  IconBean(Color(0xff6BFB00), IconMe.Umbrella, "花式"),
  IconBean(Color(0xff63DAFF), IconMe.Atom, "竞速"),
  IconBean(Color(0xff5CEBF2), IconMe.Planet, "广场"),
  IconBean(Color(0xffF3D861), IconMe.Fire, "教程"),
  IconBean(Color(0xff8FC552), IconMe.Star, "收藏"),
];

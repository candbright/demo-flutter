import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../iconfont.dart';

class ItemBean {
  Color color;
  IconData iconId;
  String info;
  ItemBean(this.color, this.iconId, this.info);
}

//底部栏图标信息
var icons=[
  ItemBean(Color(0xff8FC552),TolyIcon.Umbrella,"花式"),
  ItemBean(Color(0xff6BFB00),TolyIcon.Atom,"竞速"),
  ItemBean(Color(0xff63DAFF),TolyIcon.PawPrint,"广场"),
  ItemBean(Color(0xffF3D861),TolyIcon.Leaf,"教学"),
  ItemBean(Color(0xff5CEBF2),TolyIcon.Star,"收藏")
];

import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('文本组件'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            '红色+黑色删除线+25号',
            style: TextStyle(
              color: const Color(0xffff0000),
              decoration: TextDecoration.lineThrough,
              decorationColor: const Color(0xff000000),
              fontSize: 25,
            ),
          ),
          Text(
            '橙色+下划线+24号',
            style: TextStyle(
              color: const Color(0xffff9900),
              decoration: TextDecoration.underline,
              fontSize: 24,
            ),
          ),
          Text(
            '虚线上划线+23号+倾斜',
            style: TextStyle(
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed,
              fontSize: 23,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            '24号+加粗',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 6,
              fontSize: 23
            ),
          ),
        ],
      ),
    );
  }
}
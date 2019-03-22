import 'package:flutter/material.dart';

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('容器组件示例1'),
        ),
        body: Center(
          //添加容器
          child: Container(
            width: 200,
            height: 200,
            //添加边框装饰效果
            decoration: BoxDecoration(
              color: Colors.white,
              //设置上下左右四个边框样式
              border: Border.all(
                color: Colors.grey, //边框颜色
                width: 8, //边框宽度
              ),
              borderRadius:
                  const BorderRadius.all(const Radius.circular(8)), //边框的弧度
            ),
            child: Text(
              'Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
      ),
    );
  }
}

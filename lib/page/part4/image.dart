import 'package:flutter/material.dart';

//加载一张网络图片，以BoxFit.fitWidth模式填充图片
class ImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      //添加网络图片
      child: new Image.network(
        'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085101331,4065684801&fm=26&gp=0.jpg',
        //填充模式
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
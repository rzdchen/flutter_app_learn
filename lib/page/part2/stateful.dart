import 'package:flutter/material.dart';

//StatefulWidget示例
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  //标题
  final String title;

  //必须重写createState方法
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

//状态类必须继承state类，注意后面指定为<MyHomePage>
class _MyHomePageState extends State<MyHomePage> {
  //计数器
  int _counter = 0;

  void _incrementCounter() {
    //调用state类里的setState方法来更改状态值，使计数器加1
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //居中布局
      body: Center(
        //垂直布局
        child: Column(
          //主轴居中对其
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter', //绑定计数器的值
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

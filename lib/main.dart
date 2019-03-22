import 'package:flutter/material.dart';
import 'package:flutter_app_learn/page/part4/container.dart';

//url
import 'package:url_launcher/url_launcher.dart';

//http
import 'package:http/http.dart' as http;

//httpclient
import 'dart:io';
import 'dart:convert';

void main() => runApp(MyApp());
//上面代码等同于
//void main(){
//  runApp(MyApp())
//}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appName = '自定义主题';
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        brightness: Brightness.light, //应用程序整体主题的亮度
        primaryColor: Colors.lightGreen[600], //app主要部分的背景色
        accentColor: Colors.orange[600], //前景色（文本、按钮等）
      ),
      home: MyHomePage(title: appName),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Container(
            //获取主题的accentColor
            color: Theme
                .of(context)
                .accentColor,
            child: Text(
              '带有背景颜色的文本组件',
              style: Theme
                  .of(context)
                  .textTheme
                  .title,
            ),
          )),
      floatingActionButton: Theme(
        //使用copyWith的方式获取accentColor
        data: Theme.of(context).copyWith(accentColor: Colors.grey),
        child: FloatingActionButton(
          onPressed: getWeatherData,
          tooltip: '百度',
          child: Icon(Icons.computer),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void httpRequest() {
    var url = 'http://httpbin.org/';
    //发送get请求
    http.get(url).then((response) {
      print('状态：${response.statusCode}');
      print('正文：${response.body}');
    });
  }

  void getWeatherData() async {
    try {
      //实例化一个httpClient对象
      HttpClient httpClient = HttpClient();
      //发起请求
      String url = "http://t.weather.sojson.com/api/weather/city/101030100";
//      HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));
      //增加查询参数
      Uri uri = Uri(
          scheme: 'https', host: 't.weather.sojson.com', queryParameters: {
        "_id": 26,
        "city_code": "101030100",
        "city_name": "天津"
      });
      HttpClientRequest request = await httpClient.getUrl(uri);
      //等待服务器返回数据
      HttpClientResponse response = await request.close();

      //使用utf8.decoder从response里解析数据
      var result = await response.transform(utf8.decoder).join();
      //输出响应头
      print(result);

      //httpClient关闭
      httpClient.close();
    } catch (e) {
      print("请求失败：$e");
    }
  }
  void joinImage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyAppPage()));
  }


}

//打开url
_launchURL() async {
  const url = 'https://baidu.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}



import 'package:flutter/material.dart';

import '有默认占位图和淡入效果.dart';

void main() => runApp(MaterialApp(
      title: 'Flutter',
      home: SplashPage(),
    ));

class SplashPage extends StatelessWidget {
  final splashUrl =
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571836262402&di=96957970025fa1061c28854bcfeabee1&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201312%2F04%2F20131204184148_hhXUT.jpeg';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment(0, 0.75),
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(splashUrl))),
        ),
        GestureDetector(
          // 设置点击事件
          onTap: () {
            // 使用 Navigator 跳转页面
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return HomePage();
            }));
          },
          child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                gradient: LinearGradient(
                  colors: <Color>[Colors.red, Colors.green, Colors.blue],
                ),
              ),
              child: Center(
                  child: Text(
                "测试Navigator",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ))),
        ),
      ],
    );
  }
}

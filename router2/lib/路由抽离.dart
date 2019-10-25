import 'package:flutter/material.dart';
import './routes/Routes.dart';
// import './routes/Routes.dart';
// import './pages/Home.dart';
// import './address/GetAddress.dart';
// import './files/Main.dart';
// import './routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: true,
      navigatorKey: new GlobalKey(),
      initialRoute: '/',  //配置默认访问路径
      ///当通过Navigation.of(context).pushNamed跳转路由时，
      //在routes查找不到时，会调用该方法
      onGenerateRoute:onGenerateRoute,//
    );
  }
}

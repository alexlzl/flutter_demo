import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(new FadeInImageDemoApp());

class FadeInImageDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Image Demo',
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Fade In Image Demo Page'),),
      body: Stack(
        children: <Widget>[
          Center(child: CircularProgressIndicator()),
          Center(child: FadeInImage.memoryNetwork(
            image: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571828011947&di=c77084049f2dace0c9633c08c911e68e&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201208%2F30%2F20120830173930_PBfJE.jpeg',
            placeholder: kTransparentImage/* 透明图片 */,)),
        ],
      ),
    );
  }

}
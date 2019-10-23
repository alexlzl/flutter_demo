import 'package:flutter/material.dart';

void main() => runApp(new ImageDemoApp());

class ImageDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Image Demo11',
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
      appBar: new AppBar(
        title: new Text('Web Image Demo Page'),
      ),
      body: new ListView(
        children: <Widget>[
         new  Container(
            margin: EdgeInsets.only(bottom: 12.0),
            decoration: BoxDecoration(color: Colors.grey),
            child: Column(
              children: <Widget>[
                new Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571828011947&di=c77084049f2dace0c9633c08c911e68e&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201208%2F30%2F20120830173930_PBfJE.jpeg',
                  width: 100,height: 100,
                ),
                Text('Image.network')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12.0),
            decoration: BoxDecoration(color: Colors.grey),
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true',
                ),
                Text('Image.network  Animated Gifs')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

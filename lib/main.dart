import 'package:flutter/material.dart';

import 'background.dart';
import 'loginUI.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Background(),
            InputUI(),
          ],
        ));
  }
}
Widget widgetE() {
  return Row
    (children: [
    SizedBox(width: 10.0),
    RaisedButton(color: color == CupertinoColors.white ? Colors.red : color,
      focusColor: color,
      child: Text("Flat"),
      onPressed: () => setState(() => style = NeuomorphicStyle.Flat),),
    RaisedButton(color: color == CupertinoColors.white ? Colors.red : color,
      focusColor: color,
      child: Text("Concave"),
      onPressed: () => setState(() => style = NeuomorphicStyle.Concave),),
    RaisedButton(color: color == CupertinoColors.white ? Colors.red : color,
        focusColor: color,
        child: Text("Pressed"),
        onPressed: ()=> setState(() =>style = NeuomorphicStyle.Pressed)),
    RaisedButton(color: color == CupertinoColors.white ? Colors.red : color,
      focusColor: color,
      child: Text("Convex"),
      onPressed: () => setState(() => style = NeuomorphicStyle.Convex),),
    SizedBox(width: 10.0),
  ], mainAxisAlignment: MainAxisAlignment.spaceEvenly);
}
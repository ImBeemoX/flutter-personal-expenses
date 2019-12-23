import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
       home: MyHomePage());
       
   }
}

class MyHomePage extends StatelessWidget {
  final List

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[Card(color: Colors.blue, child: Container(child: Text("Chart"), width: double.infinity,), elevation: 5, ),
        Card(child: Text("List"),)]
      ),
    );
  }
}

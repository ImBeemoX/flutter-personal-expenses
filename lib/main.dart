import 'package:flutter/material.dart';
import './transaction.dart';

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
  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactions = [
      Transaction(id: "PS4", title: "PS4 Pro", amount: 399, date:DateTime.now()),
      Transaction(id: "Switch", title: "Nintendo Switch", amount: 399.9, date:DateTime.now()),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[Card(color: Colors.blue, child: Container(child: Text("Chart"), width: double.infinity,), elevation: 5, ),
        Column(children: transactions.map((transcation) {
          return Card(child: Row(children: <Widget>[Container(child: Text('\$' + transcation.amount.toString(),style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.deepOrange)), 
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15), decoration: BoxDecoration(border: Border.all()), padding: EdgeInsets.all(13),
          ), Column(children: <Widget> [Text(transcation.title.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), Text(transcation.date.toString(), )] 
          , crossAxisAlignment: CrossAxisAlignment.start,)
          ],
          ),
          );
        }).toList(),)]
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';
import 'transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePage();
  }
}

class MyHomePage extends State {
  final List<Transaction> transactions = [
      Transaction(id: "PS4", title: "PS4 Pro", amount: "399", date:DateTime.now()),
      Transaction(id: "Switch", title: "Nintendo Switch", amount: "399.9", date:DateTime.now()),
    ];
    String titleInput;
    String amountInput;
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Card(elevation: 5,child: Container(padding: EdgeInsets.all(10) ,child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[TextField(decoration: InputDecoration(labelText: "Title"), onChanged: (value){this.titleInput = value;},), 
        TextField(decoration: InputDecoration(labelText: "Amount"), onChanged: (value){this.amountInput = value;},), 
        FlatButton(child: Text('Add Transaction'), textColor: Colors.deepOrange, onPressed: (){
          setState(() {
            transactions.add(Transaction(id: "1", title: this.titleInput, amount: this.amountInput, date: DateTime.now()));
          });
        },)],)),),
        
        Column(children: transactions.map((transcation) {
          return Card(child: Row(children: <Widget>[Container(child: Text('\$' + transcation.amount.toString(),style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.deepOrange)), 
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15), decoration: BoxDecoration(border: Border.all(color: Colors.grey)), padding: EdgeInsets.all(8),
          ), Column(children: <Widget> [Text(transcation.title.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), Text(DateFormat().format(transcation.date,),style: TextStyle(color: Colors.grey))] 
          , crossAxisAlignment: CrossAxisAlignment.start, )
          ],
          ),
          );
        }).toList(),)]
      ),
    ));
  }
}

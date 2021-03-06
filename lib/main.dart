import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    new Transaction(
      id: "t1",
      amount: 69,
      date: DateTime.now(),
      title: "New Shoes",
    ),
    new Transaction(
      id: "t2",
      amount: 31,
      date: DateTime.now(),
      title: "New Clothes",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          new Container(
            width: double.infinity,
            child: new Card( // freestyle widget // depends on size of its (longest) child by default unless you have a parent like Container or Card with its own clearly defined width
              color: Colors.blue,
              child: new Text("Chart"), // 'Card' now no longer depends on width of the text, but that of the 'Container' which we can easily control
              elevation: 5,
            ),
          ),
          new Card(
            child: new Text("List of transactions"),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: new Column(
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

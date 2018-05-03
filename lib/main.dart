import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = new WordPair.random();  before statefull class
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter Startup'),
        ),
        body: new Center(
         // child: new Text('Hello World'),
          //child: new Text(wordPair.asPascalCase)
          child: new RandomWords()
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget{
  @override
  createState() => new RandomWordsState();
}
class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];  //save favourite words from list
  final _bigFont = const TextStyle(fontSize: 18.0);  //font size
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}
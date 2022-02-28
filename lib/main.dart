// import material UI
import 'package:flutter/material.dart';
// Calling runApp again will detach the previous root
// widget from the screen and attach the given widget 
//in its place.
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Basic",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const _MyHomePage(title: "Flutter Basic"),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  final String title;
  const _MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  __MyHomePageState createState() => __MyHomePageState();
}
class __MyHomePageState extends State<_MyHomePage> {
  double _fontSize = 12;
  void _incrementFont() {
    setState(() {
      _fontSize != 28 ? _fontSize++ : _fontSize = 12;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello world",
              style: TextStyle(
                fontSize: _fontSize,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementFont,
        tooltip: "Increase font",
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}

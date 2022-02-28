import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Image from URL",
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryTextTheme: const TextTheme(
            bodyText2: TextStyle(
          color: Colors.blue,
        )),
      ),
      home: const MyHomePage(title: "Image from URL"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  static String URL = "https://picsum.photos/300/400";
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(text: "Image from URL", children: [
                TextSpan(
                    text: URL,
                    style: const TextStyle(
                      color: Colors.blue,
                    ))
              ]),
            ),
            SizedBox(
              height: 5,
            ),
            Image.network(URL),
          ],
        ),
      ),
    );
  }
}

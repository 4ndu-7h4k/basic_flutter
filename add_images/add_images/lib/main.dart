import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Image",
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: const AddImage(title: "Sample Image"),
    );
  }
}

class AddImage extends StatelessWidget {
  final String title;
  const AddImage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:Container(
        padding: const  EdgeInsets.only(left : 3 , right : 3),
        child: Center(
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              //for adding images add asset in pubspec.yaml
              Image(image: AssetImage("images/boy.jpg")),
              SizedBox(
                width: 8,
              ),
              Image(image: AssetImage("images/girl.jpg")),
        
            ],
          ),
        ),
      ),
    );
  }
}

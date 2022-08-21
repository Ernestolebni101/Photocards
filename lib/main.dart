import 'package:ejemplo1/photos/ui/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo Flutter",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Title(
            color: Colors.white,
            child: Text("AppBar"),
          ),
        ),
        body: HomeView(),
      ),
    );
  }
}

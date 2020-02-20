import 'dart:math';
import 'package:flutter/material.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:  TestApp(),
    );
  }
}

class TestApp extends StatefulWidget {
  @override
  State createState() =>  _TestAppState();
}

class _TestAppState extends State<TestApp> {

  final Random _random = Random();
  Color _colorBG = Colors.black;
  Color _colorText = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
            setState(() {
              _colorBG = Color.fromRGBO(
                _random.nextInt(256),
                _random.nextInt(256),
                _random.nextInt(256),
                1.0
              );
            });
          },
      onDoubleTap: (){
        setState(() {
              _colorText = Color.fromRGBO(
                _random.nextInt(256),
                _random.nextInt(256),
                _random.nextInt(256),
                1.0
              );
            });
      },
      
      child: Scaffold(
        backgroundColor: _colorBG,

        appBar: AppBar(
          title: const Text(
          "Solid test", 
          style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.lime,
      ),
      
      body: Center(
          child: Text("Hey there!",
          style: TextStyle(
              fontSize: 44, 
              fontWeight: FontWeight.bold, 
              color: _colorText
              ),),
        ),
      ),

    );
  }
}
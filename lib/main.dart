import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestApp(),
    );
  }
}

class TestApp extends StatefulWidget {
  @override
  State createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  
  Color _colorBG = _getColor();
  Color _colorAppbar = _getColor();
  Color _colorText = _getColorText();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _colorBG = _getColor();
        });
      },  
      onDoubleTap: () {
        setState(() {
          _colorText = _getColorText();
        });
      },
      onLongPress: () {
        setState(() {
          _colorAppbar = _getColor();
        });
      },
      child: Scaffold(
        backgroundColor: _colorBG,
        appBar: AppBar(
          title:
              const Text("Solid test", style: TextStyle(color: Colors.black87)),
          backgroundColor: _colorAppbar,
        ),
        body: Center(
            child: Wrap(
              children: <Widget>[
                Text(
                  "H",
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                    color: _getColorText(),
                  ),
                ),
                Text(
                  "e",
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: _getColorText()),
                ),
                Text(
                  "y ",
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: _getColorText()),
                ),
               
                Text(
                  "t",
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: _getColorText()),
                ),
                Text(
                  "h",
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: _getColorText()),
                ),
                Text(
                  "e",
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: _getColorText()),
                ),
                Text(
                  "r",
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: _getColorText()),
                ),
                Text(
                  "e",
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: _getColorText()),
                ),
                Text(
                  "!",
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: _getColorText()),
                ),
              ],
            )),
      ),
    );
  }

  static Color _getColor() {
    final Random _random = Random();
    var col = Color.fromRGBO(
        _random.nextInt(256), _random.nextInt(256), _random.nextInt(256), 1.0);
    return col;
  }

    static Color _getColorText() {
      final Random _random = Random();
    var col = Color.fromRGBO(
        _random.nextInt(256), _random.nextInt(256), _random.nextInt(256), 1.0);
    return col;
  }
  
}

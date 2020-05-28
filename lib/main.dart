import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:provider/provider.dart';
import 'package:vibration/vibration.dart' as vibro;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Solid Test'),
          centerTitle: true,
        ),
        body: ChangeNotifierProvider(
            create: (_) => ColorChange(), child: TestApp()),
      ),
    );
  }
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorChange state = Provider.of(context);
    return GestureDetector(
        child: Container(
          color: Colors.amber,
          child: Center(
            child: Text("Hey There!",
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w300,
                    color: state.textColor)),
          ),
        ),
        onTap: () => state.generateColor(),
        onDoubleTap: () => vibro.Vibration(),
        );
  }
}

class ColorChange extends ChangeNotifier {
  Color _color = Color.fromRGBO(math.Random().nextInt(255),
      math.Random().nextInt(255), math.Random().nextInt(255), 1.0);


  Color get textColor => _color; 

  generateColor() {
    _color = Color.fromRGBO(math.Random().nextInt(255),
        math.Random().nextInt(255), math.Random().nextInt(255), 1.0);
    notifyListeners();
  }
}

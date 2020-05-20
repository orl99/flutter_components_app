import 'dart:math';

import 'package:flutter/material.dart';
class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerState createState() => _AnimatedContainerState();
}

class _AnimatedContainerState extends State<AnimatedContainerPage> {
  // Properties
  double _width  = 50.0;
  double _height = 50.0;
  Color _color  = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeAnimatedContainerState,
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void _changeAnimatedContainerState() {
    final random = Random();
    setState(() {
      this._width  = random.nextInt(300).toDouble();
      this._height = random.nextInt(300).toDouble();
      this._color  = Color.fromARGB(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      this._borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
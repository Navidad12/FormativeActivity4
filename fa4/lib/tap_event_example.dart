import 'package:flutter/material.dart';
import 'dart:math' as math;

class TapWidgetExample extends StatefulWidget{
  const TapWidgetExample({super.key});

  @override
  State<TapWidgetExample> createState() => _TapWidgetExampleState();
}

class _TapWidgetExampleState extends State<TapWidgetExample>{
  int _counter = 0;
  Color randomcolor = Colors.grey;
  Color _generateColor(){
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt());
  }
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        setState((){
          _counter++;
          randomcolor = _generateColor();
        });
      },
      child: Container(
        color: randomcolor,
        child: Center(
          child: Text(
            "Tap me: $_counter",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
    );
  }
}
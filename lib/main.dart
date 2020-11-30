import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // Container(
              //   child:Text("HELLO World!"),
              // ),
              Container(
                child: Image.asset('images/pic.jpg' ,width:300,height:100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

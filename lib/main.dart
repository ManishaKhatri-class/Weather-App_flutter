
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
              Container(
                margin:EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child:Text("Weather App", style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue[500],
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              Container(
                child: Image.asset("images/pic.png"
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical:10.0),
                child: Text("You are in :",style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue[500],
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text("Amritsar",style: TextStyle(
                        fontSize: 32,
                        color: Colors.blue[500],
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin:EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.wb_sunny,
                    color: Colors.yellow,
                  ),
                  title: Text("TEMP: 25 c"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

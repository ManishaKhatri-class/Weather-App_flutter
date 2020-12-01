
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: Text("WeatherApp"),
          backgroundColor: Colors.black,

        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // Container(
              //   child:Text("Weather App", style: TextStyle(
              //     fontSize: 35,
              //     color: Colors.blue[500],
              //     fontWeight: FontWeight.bold,
              //   ),
              //   ),
              // ),
              Container(
                margin:EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: displayImage(),
        ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical:15.0),
                child: Text("You are in :",style: TextStyle(
                  fontSize: 25,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text("Amritsar",style: TextStyle(
                        fontSize: 32,
                        color: Colors.orangeAccent,
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
                margin:EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(
                    Icons.wb_cloudy,
                    color: Colors.blueGrey,
                  ),
                  title: Text("TEMP: 16 C"),
                ),
              ),
              Container(
                child: Text(displayTime() ,style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 20,
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }

  //function for displaying images
  displayImage()
  {
    var now=DateTime.now();
    final currentTime=DateFormat.jm().format(now);
    if(currentTime.contains("AM")) {
      print("The current time is : $currentTime");
      return Image.asset("images/daytime.jpg");
    }
    else
      {
        print("The current time is : $currentTime");
        return Image.asset("images/nighttime.jpg");
      }
  }
  displayTime()
  {
    var now=DateTime.now();
   final currentTime=DateFormat.jm().format(now);
    return "The current time is : $currentTime" ;

  }
}

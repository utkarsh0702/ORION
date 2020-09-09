import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 7), finished);
  }

  void finished(){
    Navigator.pushNamed(context, '/reg');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo1.png'),
              Text(
                'ORION',
                style: TextStyle(
                  fontSize: 40.0,
                  color:Colors.white,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Cursive'
                )
              )
            ],
          ),
        ),
      )
    );
  }
}
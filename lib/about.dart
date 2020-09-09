import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/logo1.png'),
                    ),
                    ),
  //------------------------------------TITLE-------------------------------//
                  SizedBox(height: 20.0,),
                  Text(
                    'ORION',
                    style:TextStyle(
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                    ),

  //--------------------------------------Version------------------------------//
                  SizedBox(height: 10.0,),
                  Text(
                    'VERSION: 1.0.0+1',
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Theme.of(context).primaryColor,
                    ),
                    ),

  //-----------------------------------Copyright----------------------------------//
                  SizedBox(height: 10.0,),
                  Text(
                    '\u00a9 2020, Utkarsh Mishra',
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}
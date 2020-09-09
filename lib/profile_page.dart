import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  // function to return the items
  Widget items(var icon, var text, var page){
    return Expanded(
          child: GestureDetector(
            onTap: (){
                Navigator.pushNamed(context, page);
            },
            child: Container(
                  height: 10.0,
                  margin: EdgeInsets.symmetric(
                    horizontal: 40.0,
                  ).copyWith(bottom: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Theme.of(context).accentColor,
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        icon,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                        ),
                        Spacer(),
                        Icon(
                        LineAwesomeIcons.angle_right,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final textStyleTop=TextStyle(
    fontSize: 21.0,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).primaryColor
  );

  final textStyleStat=TextStyle(
    fontSize: 15.0,
    color: Theme.of(context).primaryColor
  );

    var info = Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 120.0,
                            width: 120.0,
                            margin: EdgeInsets.only(top:20),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Theme.of(context).accentColor, width:5),
                              image: DecorationImage(
                                image: AssetImage('assets/images/img1.jpg'),
                                fit: BoxFit.cover,
                                )
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.yellow[900],
                                ),
                                child: Icon(
                                  LineAwesomeIcons.pen,
                                  size: 18.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height:15.0),
                          Text(
                            'Tomy Stark',
                            style: GoogleFonts.pacifico(
                              textStyle: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 25.0,
                                letterSpacing: .5
                                ),
                              ),
                            ),
                          SizedBox(height:5.0),
                          Text(
                            'tony.ironman@gmail.com',
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                letterSpacing: .5
                                ),
                             ),
                            ),
                          SizedBox(height: 5.0,),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            '10',
                            style: textStyleTop,
                          ),
                          Text(
                            'Purchased',
                            style: textStyleStat,
                          )
                        ]
                      ),
                      Text(
                            "\u007c",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                      Column(
                        children: <Widget>[
                          Text(
                            '20',
                            style: textStyleTop,
                          ),
                          Text(
                            'Wish List',
                            style: textStyleStat,
                          )
                        ]
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );

    return SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    info
                  ],
                ),
              SizedBox(height: 40.0),
              items(LineAwesomeIcons.heart, 'Wish List', '/wish_list'),
              items(LineAwesomeIcons.shopping_cart, 'Purchase History', '/purchase_history'),
              items(LineAwesomeIcons.cog, 'Settings','/settings'),
              items(LineAwesomeIcons.alternate_sign_out, 'Logout','/reg'),
            ]
        ),
     );
  }
}
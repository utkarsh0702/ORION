import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PurchaseHistory extends StatefulWidget {
  @override
  _PurchaseHistoryState createState() => _PurchaseHistoryState();
}

class _PurchaseHistoryState extends State<PurchaseHistory> {
  @override
  Widget build(BuildContext context) {

    Widget items(String image, String name, String desc, String date){
      return Padding(
        padding: const EdgeInsets.only(top:5.0, left: 15.0, right: 15.0, bottom:5.0),
        child: Card(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Colors.yellow[900], width:3),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                          )
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                              name,
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                        ),
                    Text(desc),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(date),
                    ),
                    ],
                  ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    LineAwesomeIcons.shopping_cart_arrow_down, 
                    color: Theme.of(context).primaryColor,
                    size: 35.0,
                    ),
                  onPressed: (){}
                ),
              ],
            ),
          ),
        ),
      );
}

    // ignore: non_constant_identifier_names
    var icon_and_title = Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            LineAwesomeIcons.arrow_left, 
                            color: Colors.white,
                            size: 30.0,
                            ),
                          onPressed: (){
                            Navigator.pop(context);
                          }
                          ),
                        Spacer(flex: 1),
                        Padding(
                            padding: const EdgeInsets.only(top:20.0),
                            child: Text(
                              'Purchase History',
                              style: GoogleFonts.pacifico(
                                textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                              letterSpacing: .5
                                              ),
                                            ),
                                    ),
                              ),
                        Padding(
                          padding: const EdgeInsets.only(top:20.0, left:10.0),
                          child: Icon(
                            LineAwesomeIcons.shopping_cart, 
                            color: Colors.white,
                            size: 35.0,
                            ),
                        ),
                        Spacer(flex:2),
                      ],
                      )
      );

        return Scaffold(
          body: Container(
            color:Theme.of(context).accentColor,
            child: SafeArea(
              child: Stack(
                    children: <Widget>[
                        icon_and_title,
                        Container(
                          margin: EdgeInsets.only(top: 80.0),
                          decoration: BoxDecoration(
                            color:Colors.white,
                            border: Border.all(
                              color: Colors.yellow[900],
                              width: 5.0,
                              ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(70.0),
                              topRight: Radius.circular(70.0)
                            ),
                          ),
                        ),
                        Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top:120.0),
                          child: ListView(
                            children: [
                              items('assets/images/img2.jpg', 'Scenery 1', 'Land Sunset', 'Date: 28/08/2020'),
                              items('assets/images/img3.jpg', 'Scenery 2', 'Horizon Sunset', 'Date: 03/08/2020'),
                              items('assets/images/img4.jpg', 'Devil', 'Moon Wings', 'Date: 21/07/2020'),
                              items('assets/images/img5.jpg', 'Nebula', 'Gas Cloud', 'Date: 05/07/2020'),
                              items('assets/images/img6.jpg', 'Aurora', 'Aratic Lights', 'Date: 04/06/2020'),
                              items('assets/images/img7.jpg', 'Fox', 'Cool Fox Design', 'Date: 14/04/2020'),
                              items('assets/images/img8.jpg', 'Road', 'Road Not Taken', 'Date: 29/01/2020'),
                              items('assets/images/img9.jpg', 'Birds', 'Chipping Birds', 'Date: 09/11/2019'),
                            ],
                          ),
                        )
                        ),
                      ],
                    ),
            ),
          ),
    );
  }
}
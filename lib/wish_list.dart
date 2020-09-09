import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {

    Widget items(String image, String name){
      return Padding(
        padding: const EdgeInsets.only(top:15.0, left: 15.0, right: 15.0, bottom:5.0),
        child: Card(
          color: Colors.transparent,
          elevation: 20,
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
                  Align(
                    alignment: FractionalOffset.center,
                    child: Padding(
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
                      ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    LineAwesomeIcons.trash, 
                    color: Theme.of(context).primaryColor,
                    size: 30.0,
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
                              'Wish List',
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
                            LineAwesomeIcons.heart_1, 
                            color: Colors.red,
                            size: 30.0,
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
                              items('assets/images/img2.jpg', 'Scenery 1'),
                              items('assets/images/img3.jpg', 'Scenery 2'),
                              items('assets/images/img4.jpg', 'Devil'),
                              items('assets/images/img5.jpg', 'Nebula'),
                              items('assets/images/img6.jpg', 'Aurora'),
                              items('assets/images/img7.jpg', 'Fox'),
                              items('assets/images/img8.jpg', 'Road'),
                              items('assets/images/img9.jpg', 'Birds'),
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
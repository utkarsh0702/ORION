import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {

  int sum=0;

   Widget items(String image, String name, int price, int count){
     sum+=price*count;
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
                  Column(
                    children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                                name,
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                        Row(
                          children: [
                            Text(
                              '\$',
                              style: TextStyle(
                                color:Colors.orange,
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              '$price',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        )
                      
                    ],
                  ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                        onPressed: (){
                          setState(() {
                            count++;
                          });
                        },
                        minWidth: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey[900],width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.transparent,//Theme.of(context).accentColor,
                        child:Text(
                          'x$count',
                        ),
            ),
                )
              ],
            ),
          ),
        ),
      );
}

  @override
  Widget build(BuildContext context) {

    return Container(
      color:Theme.of(context).accentColor,
            child: SafeArea(
              child: Stack(
                    children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 50.0),
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(70.0),
                              topRight: Radius.circular(70.0)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:70.0, left: 40.0),
                          child: Column(
                            children: [
                             Text(
                                  'Shopping',
                                  style:TextStyle(
                                      color: Colors.yellow[900],
                                      fontSize: 30.0,
                                      letterSpacing: .5,
                                      fontWeight: FontWeight.bold
                                      ),
                                    ),
                              Text(
                                  'Cart',
                                  style:TextStyle(
                                      fontSize: 25.0,
                                      letterSpacing: .5,
                                      ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top:75.0, right: 30.0),
                            child: IconButton(
                                icon: Icon(
                                  LineAwesomeIcons.trash, 
                                  color: Theme.of(context).primaryColor,
                                  size: 30.0,
                                  ),
                                onPressed: (){}
                              ),
                          ),
                        ),
                        Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top:135.0),
                          child: ListView(
                            children: [
                              items('assets/images/shop1.jpg', 'T-Shirt', 30, 3),
                              items('assets/images/shop2.jpg', 'College Bag', 50, 1),
                              items('assets/images/shop3.jpg', 'Frok Suit', 68, 2),
                               items('assets/images/shop4.jpg', 'Gloves', 99, 1),
                               Padding(
                                 padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                                 child: Divider(
                                   height: 30.0, 
                                   thickness: 2.0, 
                                   color: Colors.grey[500]
                                   ),
                               ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0, left: 40.0),
                                    child: Text(
                                      '4 items',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 15.0
                                      ),
                                      ),
                                  ),
                                  Spacer(),
                                   Align(
                                     alignment: Alignment.bottomRight,
                                     child: Padding(
                                      padding: const EdgeInsets.only(top: 8.0, right: 40.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            '\$',
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 20.0
                                            ),
                                            ),
                                            Text(
                                            '$sum',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold
                                            ),
                                            ),
                                        ],
                                      ),
                                  ),
                                   ),
                                ],
                              ),
                              SizedBox(height:60.0)
                            ],
                          ),
                        )
                        ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: MaterialButton(
                          onPressed: (){},
                          minWidth: 300.0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey[900],width: 5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.transparent,
                          splashColor: Colors.yellow[700],
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                              ),
                          ),
                          ),
                        )
                      ],
                    ),
            ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// ignore: deprecated_member_use
import 'package:collection/iterable_zip.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // ignore: non_constant_identifier_names
  List<String> car_images=[
    'assets/home_screen/promotion__one.png',
    'assets/home_screen/promotion_one.png',
    'assets/home_screen/promotion_two.png',
    'assets/home_screen/promotion_three.png',
  ];

  final List<String> images=[
      'assets/home_screen/bag.jpg',
      'assets/home_screen/girl.jpg',
      'assets/home_screen/key.jpg',
      'assets/home_screen/kid.jpg',
      'assets/home_screen/mask.jpg',
      'assets/home_screen/men.jpg',
      'assets/home_screen/shoe.jpg',
      'assets/home_screen/women.jpg',
    ];
    final List<String> names=[
      'Bag',
      "Girl's Fashion",
      'Keyboard',
      "Boy's Fashion",
      'Mask',
      "Men's Fashion",
      'Shoes',
      "Women's Fashion"
    ];
//--------------------------Horizontal Sliding List----------------------//
  Widget item(var image, String text){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          children: <Widget>[
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, 
                  color: Colors.white
              ),
              child: RawMaterialButton(
                onPressed: () {},
                shape: CircleBorder(),
                child: Icon(
                  image,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 15.0
                    ),
              ),
            )
          ],
        ),
    );
  }

//-----------------------------Grid View--------------------------------//
// ignore: non_constant_identifier_names
Widget grid_items(String image, String text){
      return Card(
          color: Colors.transparent,
          elevation: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.black, width: 2.0),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill
                )
            ),
            child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child:Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                              text,
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                      ),
                    ),
                  ),
                ),
            ),
        );
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:10.0, left:10, right: 10, bottom:10.0),
              child: CarouselSlider.builder(
                itemCount: 4, 
                itemBuilder: (BuildContext context, int itemIndex) => Container(
                  height: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.yellow[900], width: 4.0),
                    image: DecorationImage(
                      image: AssetImage(car_images[itemIndex]),
                      fit: BoxFit.fill,
                      ),
              ),
                ), 
                options: CarouselOptions(
                  aspectRatio: 16/9,
                  viewportFraction: 1.0,
                  initialPage: 0,
                  autoPlay:true,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                )
                )
            ),
            Card(
              elevation: 20.0,
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width-30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color:Colors.grey[300],
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                  children: <Widget>[
                    item(Icons.account_balance,'Popular'),
                    item(LineAwesomeIcons.t_shirt,'Fashion'),
                    item(LineAwesomeIcons.biking,'Sports'),
                    item(LineAwesomeIcons.gamepad,'Games'),
                    item(LineAwesomeIcons.mobile_phone,'Mobiles'),
                    item(LineAwesomeIcons.medkit,'Health'),
                    item(LineAwesomeIcons.desktop,'Electronics'),
                    item(LineAwesomeIcons.truck,'Store'),
                    item(LineAwesomeIcons.gift,'Voucher'),
                  ]
                  )
                ),
              ),
            ),
            Card(
              elevation: 10.0,
              color: Colors.transparent,
              child: 
              Container(
                width: MediaQuery.of(context).size.width-30,
                height: 220.0,
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                // child:Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: const EdgeInsets.all(20.0),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: IterableZip([images,names]).map((item) => grid_items(item[0], item[1])).toList(),
                    ),
              // ),
          ),
            ),
          ],
          ),
      )
    );
  }
}
import 'package:flutter/material.dart';
// ignore: deprecated_member_use
import 'package:collection/iterable_zip.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final List<String> images=[
      'assets/images/product1.jpg',
      'assets/images/product2.jpg',
      'assets/images/product11.jpg',
      'assets/images/product3.jpg',
      'assets/images/product4.jpg',
      'assets/images/product5.jpg',
      'assets/images/product10.jpg',
      'assets/images/product8.jpg',
      'assets/images/product6.jpg',
      'assets/images/product7.jpg',
      'assets/images/product9.jpg',
      'assets/images/product12.jpg',
    ];
    final List<String> names=[
      'Perfect Fit, Self Design and Round Neck T-shirt',
      'Plain Collar Necked T-shirt',
      'Loose Round Collared T-shirt',
      'Plain White Sports T-shirt',
      'Full Sleeves Round Necked Printed T-shirt',
      'Plain White Round Collared T-shirt',
      'Boat Necked Olive Green T-shirt',
      'Printed Round Necked T-shirt',
      'Multicolor Polo Necked T-shirt',
      'White Collared Sports Jersey',
      'Plain White Round Collared T-shirt',
      'AIR Printed Black Colored T-shirt',
    ];
    final List<int> amount=[
      28, 20, 32, 19, 35, 29, 28, 20, 38, 29, 31, 30
    ];


//--------------------------------------Horizontal Sliding Brands List---------------------------------//
Widget brand(String image){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color:Colors.black, width: 2),
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(image),
          )
        ),
        ),
    );
  }

//----------------------Product list--------------------------------------//

  Widget product(String image, String name, int price){
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/product');
      },
      child: Card(
        elevation: 20.0,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width / 2.2,
              child: Image.asset(image),
            ),
            SizedBox(height: 8.0,),
            Padding(
              padding: const EdgeInsets.only(left:8.0, right:8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      "\$$price",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var textArea= Expanded(
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // controller: textController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'Search',
                  ),
                ),
              )       
          );

    return Container(
      color: Theme.of(context).accentColor,
      child: SafeArea(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              height:100,
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70.0),
                  bottomRight: Radius.circular(70.0)
                ),
              ),
              child: textArea,
            ),
            SizedBox(height:10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                brand('assets/images/adidas.png'),
                brand('assets/images/fila.png'),
                brand('assets/images/levis.png'),
                brand('assets/images/nike.png'),
                brand('assets/images/roadster.png'),
                brand('assets/images/ucb.png'),
                brand('assets/images/us_polo.png'),
                ],
              ),
            ),
            SizedBox(height:10),
            Container(
              height:350,
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70.0),
                  topRight: Radius.circular(70.0)
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:40.0),
                child: Stack(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      padding: const EdgeInsets.all(20.0),
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 4.5/9.0,
                      children: IterableZip([images,names,amount]).map((item) => product(item[0], item[1], item[2])).toList(),
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
import "package:flutter/material.dart";
import "registration_page.dart";
import "login.dart";
import "signup.dart";
import "nav_bar.dart";
import 'purchase_history.dart';
import 'wish_list.dart';
import 'settings.dart';
import 'about.dart';
import 'splash_screen.dart';
import 'product_screen.dart';

void main(){
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LogIn(),
        '/signup': (context) => SignUp(),
        '/navbar': (context) => NavBar(),
        '/wish_list': (context) => WishList(),
        '/purchase_history': (context) => PurchaseHistory(),
        '/settings': (context) => Settings(),
        '/about': (context) => About(),
        '/reg': (context) => RegPage(),
        '/product':(content) => ProductScreen(),
      },
      title: 'Orion',
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.blue[400],
      ),
      home: SplashScreen(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  Widget socialMedia(String image){
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(top:15.0, right:15.0, left:15.0, bottom:70.0),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Colors.yellow,
            ),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            image,
            color: Colors.yellow,
            height: 30.0,
            width: 30.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Colors.white,
        width: size.width,
        height: size.height,
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height,
                child: Image.asset(
                  'assets/images/signup.jpg',
                  color: Colors.black26,
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.fill,
                  ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: size.width-60,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 5.0
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(30.0)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.person, color: Colors.black,),
                            hintText: 'Your Email',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  Padding(
                      padding: const EdgeInsets.only(bottom:10.0),
                      child: Container(
                        width: size.width-60,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 5.0
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(30.0)
                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock, color: Colors.black,),
                            hintText: 'Password',
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.visibility, color: Colors.black)
                          ),
                        ),
                      ),
                    ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        onPressed: (){
						  Navigator.pushNamed(context, '/navbar');
						},
                        minWidth: 300.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: Theme.of(context).accentColor,
                        splashColor: Colors.yellow[900],
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                            ),
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Have an Account ? ",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 18.0
                            ),
                          ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.yellow, 
                            fontWeight: FontWeight.w900,
                            fontSize: 18.0
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: new Container(
                          margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                          child: Divider(
                          color: Colors.white,
                          thickness: 3.0,
                          height: 30,
                          )
                        ),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                          ),
                        ),
                      Expanded(
                        child: new Container(
                          margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                          child: Divider(
                          color: Colors.white,
                          thickness: 3.0,
                          height: 30,
                          )
                        ),
                      ),
                      ]
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       socialMedia('assets/images/facebook.svg'),
                       socialMedia('assets/images/google-plus.svg'),
                       socialMedia('assets/images/twitter.svg'),
                     ],
                   )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
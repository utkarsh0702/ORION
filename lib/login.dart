import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

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
                  'assets/images/login.png',
                  color: Colors.black26,
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.fill,
                  ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LOGIN',
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
                            'Login',
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
                          "Don't have an Account ? ",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 18.0
                            ),
                          ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text(
                          "SignUp",
                          style: TextStyle(
                            color: Colors.yellow, 
                            fontWeight: FontWeight.w900,
                            fontSize: 18.0
                            ),
                          ),
                        )
                      ],
                    ),
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
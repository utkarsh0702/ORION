import "package:flutter/material.dart";

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height, 
                  child: FittedBox(
                    child: Image.asset('assets/images/reg.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/signup');
                          },
                          minWidth: 300.0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue[900],width: 5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Theme.of(context).accentColor,
                          splashColor: Colors.yellow[700],
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                              ),
                          ),
                          ),
                      ),
                    ),
                   Center(
                     child: Padding(
                        padding: const EdgeInsets.only(bottom:50.0),
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          minWidth: 300.0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue[900],width: 5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.transparent,
                          splashColor: Colors.yellow[700],
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                              ),
                          ),
                          ),
                      ),
                   ),
                  ],
                  )
              ],
            ),
        )
          )
    );
  }
}
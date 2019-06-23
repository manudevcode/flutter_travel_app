import 'package:flutter/material.dart';
import 'package:travel_app/login.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      /* routes: <String, WidgetBuilder> {
        '/login' : (BuildContext context) => new Screen3(),
        '/screen4' : (BuildContext context) => new Screen4()
      },*/
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/mountain.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/2-100.0, left: 16.0, right: 16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Welcome to Zing', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Zing UI Kit is a freebie, designed as a part of a 365 Days Design Challenge - Project365!', 
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 60.0),
                  child: new Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: new RaisedButton(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child:  const Text('Get Started', style: TextStyle(color:Colors.white),),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 0.2),
                      elevation: 4.0,
                      splashColor: Colors.blueGrey,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      }
                    ),
                  ),
                ),
              ),
            ],
          ),
        ) 
      )
    );
  }
}
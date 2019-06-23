import 'package:flutter/material.dart';
import 'package:travel_app/utils/utils.dart';
import 'package:travel_app/home.dart';

class Login extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
     return new LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor:Color(getColorHexFromStr('#323643')),
        accentColor: Color(getColorHexFromStr('#')),
        hintColor: Color(getColorHexFromStr('#595b63')),
      ),
      home: new Scaffold(
        body: new Container(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Get started', 
                        style: TextStyle(
                          fontSize: 26.0
                        ),
                      ),
                    ),              
                    SizedBox(height: 40.0),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Login with',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromRGBO(122, 122, 122, 1)
                        ),
                        ),
                    ),
                    SizedBox(height: 30.0,),
                    Row(
                      children: <Widget>[
                        Material(
                          elevation: 4.0,
                          borderRadius: BorderRadius.all(new Radius.circular(10)),
                          color: Color(getColorHexFromStr('#3B5998')),
                          child: Ink.image(
                            image: AssetImage('assets/facebook.png'),
                            fit: BoxFit.scaleDown,
                            width: MediaQuery.of(context).size.width/3 - 30,
                            height: 50.0,
                            child: InkWell(
                              onTap: () {},
                              child: null,
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Material(
                          elevation: 4.0,
                          borderRadius: BorderRadius.all(new Radius.circular(10)),
                          color: Color(getColorHexFromStr('#ffffff')),
                          child: Ink.image(
                            image: AssetImage('assets/google.png'),
                            fit: BoxFit.scaleDown,
                            width: MediaQuery.of(context).size.width/3 - 30,
                            height: 50.0,
                            child: InkWell(
                              onTap: () {},
                              child: null,
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Material(
                          elevation: 4.0,
                          borderRadius: BorderRadius.all(new Radius.circular(10)),
                          color: Color(getColorHexFromStr('#00ACED')),
                          child: Ink.image(
                            image: AssetImage('assets/twitter.png'),
                            fit: BoxFit.scaleDown,
                            width: MediaQuery.of(context).size.width/3 - 30,
                            height: 50.0,
                            child: InkWell(
                              onTap: () {},
                              child: null,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Or',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromRGBO(122, 122, 122, 1)
                        ),
                        ),
                    ),
                    SizedBox(height: 30.0),
                    new TextField(
                      decoration: new InputDecoration(labelText: "Email",),
                      obscureText: true,
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 30.0),
                    new TextField(
                      decoration: new InputDecoration(
                        labelText: "Password",
                        labelStyle: new TextStyle(color: Color(getColorHexFromStr('#595b63'))),
                        border: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                            color: Colors.red
                          )
                        )
                      ),
                    ),
                    SizedBox(height: 30.0),
                    SizedBox(
                      width: double.infinity,
                      child: new RaisedButton(
                        child: Padding(
                          padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                          child:  const Text('login', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                        ),
                        color: Color(getColorHexFromStr('#323643')),
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        elevation: 4.0,
                        splashColor: Colors.blueGrey,
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        }
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Text('Need an account?', style: TextStyle(fontSize: 16.0),),
                        SizedBox(width: 30.0),
                        Text('Sign up', style: TextStyle(color: Color(getColorHexFromStr('#0960BD')),fontSize: 16.0),),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      )
    );
  }

}
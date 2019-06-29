import 'package:flutter/material.dart';
import 'package:travel_app/utils/utils.dart';


class ActivtiesListing extends StatefulWidget{

  ActivtiesListing(this.title);
  
  final String title;
  
  @override
  State<StatefulWidget> createState() {
     return new ActivtiesListingState(this.title);
  }
}

class ActivtiesListingState extends State<ActivtiesListing> {
 
  ActivtiesListingState(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {

     final topBar = new AppBar(
      backgroundColor: new Color(getColorHexFromStr('#ccc')),
      title: Text(this.title, style: TextStyle(color: Color(getColorHexFromStr('#323643'))),),
      elevation: 0,
      leading: IconButton(
        icon: new Icon(
          Icons.keyboard_arrow_left, 
          color: Color(getColorHexFromStr('#323643'))
        ), onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: IconButton(
            icon: Icon(              
              Icons.location_on,
              color: Color(getColorHexFromStr('#323643'))
            ), onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: IconButton(
            icon: Icon(              
              Icons.menu,
              color: Color(getColorHexFromStr('#323643'))
            ), onPressed: () {},
          ),
        )
      ],
    );

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor:Color(getColorHexFromStr('#323643')),
        accentColor: Color(getColorHexFromStr('#')),
        hintColor: Color(getColorHexFromStr('#595b63')),
      ),
      home: new Scaffold(
        appBar: topBar,
        body: new Container(
          child: ListView(
            children: <Widget>[
              Row(
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Material(
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(25.0),
                              child: Container(
                                height: 110.0,
                                width: 110.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: new DecorationImage(image: AssetImage('assets/travel.png'), fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Item title", 
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0
                                    ),
                                  ),
                                  SizedBox(height: 8.0,),
                                  Text(
                                    "Item subtitle",
                                      style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 5.0,),
                                  Text(
                                    "Sunt dolor anim eu occaecat nulla officia minim do veniam irure veniam.",
                                  )
                                ],
                              ),
                            )
                          )
                        ],),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ],
          ),
        ),
      )
    );
  }
}
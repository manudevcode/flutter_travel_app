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
              Padding(
                padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'most followed activities by 1,420 people in: ${this.title}',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(getColorHexFromStr('#7A7A7A'))
                      ),
                    ),
                    SizedBox(height: 20.0),
                    
                  ]
                ),
              ),   
            ],
          ),
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:travel_app/utils/utils.dart';
import 'package:travel_app/activities_listing.dart';

class Home extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
     return new HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    final topBar = new AppBar(
      backgroundColor: new Color(getColorHexFromStr('#ccc')),
      title: Text('Home', style: TextStyle(color: Color(getColorHexFromStr('#323643'))),),
      elevation: 0,
      leading: IconButton(
        icon: new Icon(
          Icons.search, 
          color: Color(getColorHexFromStr('#323643'))
        ), onPressed: () {},
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
        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Color(getColorHexFromStr('#00ACED')),
                  ),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.location_searching,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.bookmark,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.timeline,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.person_outline,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ), 
        ),
        body: new Container(
          child: ListView(
            children: <Widget>[              
              Padding(
                padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'welcome back, Kishore.',
                      style: TextStyle(
                        fontSize: 20.0
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'it’s a bright & sunny day in Dubai, 28°C',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                    SizedBox(height: 60.0),
                    Text(
                      'what are you upto, today?',
                      style: TextStyle(
                        fontSize: 34.0,
                      ),
                    ),
                  ]
                ),
              ),   
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 240.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    itemCard('#adventure', '1,320 people this week', 'assets/water.png' ),
                    itemCard('#travel', '230 people this week', 'assets/travel.png' ),
                    itemCard('#adventure', '1,320 people this week', 'assets/dubai.jpg' ),
                  ],
                ),
              ),       
              Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'stuff you can do',
                          style: TextStyle(
                            fontSize: 20.0
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    )
                    
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 120.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    smalCard('#dance', 'assets/dance.png' ),
                    smalCard('#tattoo', 'assets/tattoo.png' ),
                    smalCard('#bunjee', 'assets/swing.png' ),
                  ],
                ),
              ),      
            ],
          ),
        )
      )
    );
  }

  Widget itemCard(String title, String subtitle, String image) {
     
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Material(
        elevation: 6.0,
        borderRadius: BorderRadius.circular(25.0),
        child: Container(
          height: 240.0,
          width: 280.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),          
            ),             
          ),
          child: GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivtiesListing(title)),
                );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter, // 10% of the width, so there are ten blinds.
                  colors: [const Color.fromRGBO(0, 0, 0, 0.2), const Color.fromRGBO(0, 0, 0, 0.5)], // whitish to gray
                  tileMode: TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w200
                        ),
                      ),
                      SizedBox(height: 30.0),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget smalCard(String title, String image){
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Material(
        elevation: 6.0,
        borderRadius: BorderRadius.circular(25.0),
        child: Container(
          width: 120.0,
          height: 120.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image)
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter, // 10% of the width, so there are ten blinds.
                colors: [const Color.fromRGBO(0, 0, 0, 0.2), const Color.fromRGBO(0, 0, 0, 0.5)], // whitish to gray
                tileMode: TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
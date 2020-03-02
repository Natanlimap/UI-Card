import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Card',
      home: homePage(context),
    );
  }
}

Widget homePage(BuildContext context){
  return new Container( //Our home page content
    color: Colors.white, //background page collor
    child: new Center( //Just to center the widget
      child: exampleUses(context), //Example card uses
    )
  );
}


Widget uiCard(String title, IconData icon, Color primary, Color secondary, BuildContext context) {
  return new GestureDetector( //implement, if necessary, a on tap, long pressed, etc.. function
      onTap: (){
       //Your function, navigation, etc...
      },
      child: new Card( //CARD widget that we will implement with an user interface
        elevation: 10, //creating a shadow under the card
        margin:  new EdgeInsets.fromLTRB(16, 20, 16, 20), // margin inside the card
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(20), //rounding the corners
        ),
        child:  new Container(   //card's body
          width: 160, //card's widths
          height: 120, //card's height
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(20), //Rounding the corners
            color: primary,
          ),
          child: new Column( //put the content on bellow the other
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Center(
                  child: new Icon( //Our card icon
                    icon,
                    size: 40.0,
                    color: secondary,
                  )),
              new SizedBox(height: 15.0), //space between icon and text
              new Center(
                child:  new Text(title, style: TextStyle(fontSize: 18.0, color: secondary)), //our card's title
              )
            ],
          ),
        )),
  );
}

Widget exampleUses(BuildContext context){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center, //center the column data
    children: <Widget>[

      //JUST EXAMPLES OF CARDS USES
      new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          uiCard("Email", Icons.email, Colors.redAccent, Colors.white, context),
          uiCard("Users", Icons.person, Colors.blueAccent, Colors.white, context),
        ],
      ),
      new Row(
        children: <Widget>[
          uiCard("Adress", Icons.map, Colors.green, Colors.white, context),
          uiCard("Payment", Icons.payment, Colors.orangeAccent, Colors.white, context),

        ],
      ),
      new Row(
        children: <Widget>[
          uiCard("Website", Icons.web, Colors.deepPurpleAccent, Colors.white, context),
          uiCard("Console", Icons.web_asset, Colors.teal, Colors.white, context),
        ],
      ),

      new Row(
        children: <Widget>[
          uiCard("Videos", Icons.video_library, Colors.deepOrangeAccent, Colors.white, context),
          uiCard("Settings", Icons.settings, Colors.black54, Colors.white, context),
        ],
      ),

    ],
  );
}
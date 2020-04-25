import 'package:flutter/material.dart';

class BottomBarPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return BottomBarPageState();
  }
}

class BottomBarPageState extends State<BottomBarPage>{

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top:0.0),
      child: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              title: Text("Home"),
              backgroundColor: Colors.black,
              activeIcon: Icon(Icons.home,
                color: Colors.green,
                size: 23.0,
              ),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.shop,),
              title: Text("Shop"),
              backgroundColor: Colors.black,
              activeIcon: Icon(Icons.shop_two),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline),
              backgroundColor: Colors.black,
              title: Text("News"),
              activeIcon: Icon(Icons.mail,
                color: Colors.green,
              ),
            )
          ],
        ),
    );
  }
}
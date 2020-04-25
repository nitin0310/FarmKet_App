import 'package:flutter/material.dart';
import 'package:flutter_farmket/AboutFarmket.dart';
import 'package:flutter_farmket/BottomBarPage.dart';
import 'package:flutter_farmket/Details.dart';
import 'package:flutter_farmket/Details2.dart';
import 'package:flutter_farmket/DrawerPage.dart';
import 'package:flutter_farmket/Feedback.dart';
import 'package:flutter_farmket/HomeContainer.dart';
import 'package:flutter_farmket/HomeCustomerDetail.dart';
import 'package:flutter_farmket/HomePageItemView.dart';
import 'package:flutter_farmket/IntroPage.dart';
import 'package:flutter_farmket/PremiumPage.dart';
import 'package:flutter_farmket/ProductPage.dart';
import 'package:flutter_farmket/SignUp.dart';
import 'package:flutter_farmket/menuPages/fruitsPage.dart';
import 'package:flutter_farmket/paymentPages/paymentMethod.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Home()
  ));
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Material(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text("Farmket",style: TextStyle(
               fontWeight: FontWeight.w600,
                fontSize: 22.0,
               ),
              ),

              actions: <Widget>[

                IconButton(icon: Icon(
                  Icons.add_shopping_cart,
                  size: 30.0,
                ),
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage()));
                  },
                ),

                IconButton(
                    icon: Icon(Icons.account_circle,
                      size: 30.0,
                    ),
                    onPressed: (){},
                ),
              ],
              elevation: 10.0,
            ),

                drawer: DrawerPage(),

                body:SafeArea(
                  child: SingleChildScrollView(
                      child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Homecontainer(),
                        Column(
                          children: <Widget>[
                            HomePageItemView(),
                            Container(
                              margin: EdgeInsets.only(top: 31,left: 10.0),
                              alignment: Alignment.centerLeft,
                              child: Text("Explore Your Choice...",style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                  color: Colors.black
                              ),),
                            ),
                            HomeCustomerDetail(),
                            Details(),
                            Details2(),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ),
            ),

            bottomNavigationBar: BottomBarPage(),
        ),
      ),
    );

  }

}
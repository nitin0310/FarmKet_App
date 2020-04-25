import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_farmket/menuPages/fruitsPage.dart';

class HomeCustomerDetail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeCustomerDetailState();
  }
}

class HomeCustomerDetailState extends State<HomeCustomerDetail>{

  @override
  Widget build(BuildContext context) {

    return Container(
        margin: EdgeInsets.only(top: 6.0),
        height: 200,

        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>fruitsPage()));
              },
              child: Container(
                  margin: EdgeInsets.only(left: 16.0),
                  width: 180.0,
                  height: 240.0,
                  child: Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/image.jpg"),
                            radius: 75,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          child: Text("Freshy Fruits",style: TextStyle(
                            color: Colors.white,
                          ),),
                        )
                      ],
                    ),
                  )
              ),
            ),

            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(left: 16.0),
                  width: 180.0,
                  height: 240.0,
                  child: Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/riceandcorn.jpg"),
                            radius: 75,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          child: Text("Rice and Corns",style: TextStyle(
                            color: Colors.white,
                          ),),
                        )
                      ],
                    ),
                  )
              ),
            ),

            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(left: 16.0),
                  width: 180.0,
                  height: 240.0,
                  child: Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/meatandeggs.jpg"),
                            radius: 75,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          child: Text("Meat and eggs",style: TextStyle(
                            color: Colors.white,
                          ),),
                        )
                      ],
                    ),
                  )
              ),
            ),

            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(left: 16.0),
                  width: 180.0,
                  height: 240.0,
                  child: Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/image.jpg"),
                            radius: 75,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          child: Text("Vegetables",style: TextStyle(
                            color: Colors.white,
                          ),),
                        )
                      ],
                    ),
                  )
              ),
            ),

          ],
        )
    );
  }
}
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_farmket/ProductPage.dart';
import '../ProductModel.dart';

class fruitsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return fruitsPageState();
  }
}

class fruitsPageState extends State<fruitsPage>{

  int applequantity=0,bananaquantity=0,grapesquantity=0;
  int watermelonquantity=0,papayaquantity=0,orangequantity=0;
  int guavaquantity=0,strawberryquantity=0;
  int total=0;

  List<ProductModel> list=[
    ProductModel("Apple",100),
    ProductModel("Banana",60),
    ProductModel("Grapes",80),
    ProductModel("Watermelon",90),
    ProductModel("Papaya",65),
    ProductModel("Guava",50),
    ProductModel("Strawberry",120),
    ProductModel("Orange",40),
  ];


  @override
  Widget build(BuildContext context) {
    total=(applequantity+bananaquantity+grapesquantity+watermelonquantity+papayaquantity+orangequantity);
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: Material(
          child: Scaffold(
            floatingActionButton: FloatingActionButton.extended(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage()));
                },
                backgroundColor: Colors.green,
                label:Text("Selected items: $total"),
            ),

            appBar: AppBar(
              title: Text("Fruits",style: TextStyle(
                fontSize: 24.0,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 30.0
                  )
                ]
              ),),
              backgroundColor: Colors.green,
              centerTitle: true,
            ),

            body:
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    children: <Widget>[

                      GestureDetector(
                        onTap: (){
                          showDialog(context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context){
                                return AlertDialog(
                                    title: Text("Select quantity to buy"),
                                    elevation: 5.0,
                                    content: Container(
                                      height: 150.0,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text("Apples: Rs.100/kg",style: TextStyle(
                                              fontSize: 25.0
                                          ),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              RaisedButton(
                                                child: Icon(Icons.exposure_neg_1),
                                                elevation: 8.0,
                                                color: Colors.red,
                                                onPressed: (){
                                                  setState(() {
                                                    applequantity--;
                                                  });
                                                },
                                              ),
                                              RaisedButton(
                                                child: Icon(Icons.exposure_plus_1),
                                                elevation: 8.0,
                                                color: Colors.lightGreenAccent,
                                                onPressed: (){
                                                  setState(() {

                                                    applequantity++;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                );
                              }
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 16.0),
                            width: 180.0,
                            height: 350.0,
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
                                      radius: 65,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: Text("Apples",style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                  )
                                ],
                              ),
                            )
                        ),
                      ),


                      GestureDetector(
                        onTap: (){
                          showDialog(context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context){
                                return AlertDialog(
                                    title: Text("Select quantity to buy"),
                                    elevation: 5.0,
                                    content: Container(
                                      height: 150.0,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text("Banana: Rs.60/dozen",style: TextStyle(
                                              fontSize: 25.0
                                          ),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              RaisedButton(
                                                child: Icon(Icons.exposure_neg_1),
                                                elevation: 8.0,
                                                color: Colors.red,
                                                onPressed: (){
                                                  setState(() {
                                                    bananaquantity--;
                                                  });
                                                },
                                              ),
                                              RaisedButton(
                                                child: Icon(Icons.exposure_plus_1),
                                                elevation: 8.0,
                                                color: Colors.lightGreenAccent,
                                                onPressed: (){
                                                  setState(() {

                                                    bananaquantity++;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                );
                              }
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 16.0),
                            width: 180.0,
                            height: 350.0,
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
                                      radius: 65,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: Text("Banana",style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                  )
                                ],
                              ),
                            )
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          showDialog(context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context){
                                return AlertDialog(
                                    title: Text("Select quantity to buy"),
                                    elevation: 5.0,
                                    content: Container(
                                      height: 150.0,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text("Grapes: Rs.80/kg",style: TextStyle(
                                              fontSize: 25.0
                                          ),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              RaisedButton(
                                                child: Icon(Icons.exposure_neg_1),
                                                elevation: 8.0,
                                                color: Colors.red,
                                                onPressed: (){
                                                  setState(() {
                                                    grapesquantity--;
                                                  });
                                                },
                                              ),
                                              RaisedButton(
                                                child: Icon(Icons.exposure_plus_1),
                                                elevation: 8.0,
                                                color: Colors.lightGreenAccent,
                                                onPressed: (){
                                                  setState(() {

                                                    grapesquantity++;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                );
                              }
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 16.0),
                            width: 180.0,
                            height: 350.0,
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
                                      radius: 65,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: Text("Grapes",style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                  )
                                ],
                              ),
                            )
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          showDialog(context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context){
                                return AlertDialog(
                                    title: Text("Select quantity to buy"),
                                    elevation: 5.0,
                                    content: Container(
                                      height: 150.0,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text("Watermelon: Rs.90/kg",style: TextStyle(
                                              fontSize: 25.0
                                          ),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              RaisedButton(
                                                child: Icon(Icons.exposure_neg_1),
                                                elevation: 8.0,
                                                color: Colors.red,
                                                onPressed: (){
                                                  setState(() {
                                                    watermelonquantity--;
                                                  });
                                                },
                                              ),
                                              RaisedButton(
                                                child: Icon(Icons.exposure_plus_1),
                                                elevation: 8.0,
                                                color: Colors.lightGreenAccent,
                                                onPressed: (){
                                                  setState(() {

                                                    watermelonquantity++;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                );
                              }
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 16.0),
                            width: 180.0,
                            height: 350.0,
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
                                      radius: 65,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: Text("Watermelon",style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                  )
                                ],
                              ),
                            )
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          showDialog(context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context){
                                return AlertDialog(
                                    title: Text("Select quantity to buy"),
                                    elevation: 5.0,
                                    content: Container(
                                      height: 150.0,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text("Papaya: Rs.65/kg",style: TextStyle(
                                              fontSize: 25.0
                                          ),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              RaisedButton(
                                                child: Icon(Icons.exposure_neg_1),
                                                elevation: 8.0,
                                                color: Colors.red,
                                                onPressed: (){
                                                  setState(() {
                                                    applequantity--;
                                                  });
                                                },
                                              ),
                                              RaisedButton(
                                                child: Icon(Icons.exposure_plus_1),
                                                elevation: 8.0,
                                                color: Colors.lightGreenAccent,
                                                onPressed: (){
                                                  setState(() {

                                                    applequantity++;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                );
                              }
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 16.0),
                            width: 180.0,
                            height: 350.0,
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
                                      radius: 65,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: Text("Papaya",style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                  )
                                ],
                              ),
                            )
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          showDialog(context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context){
                                return AlertDialog(
                                    title: Text("Select quantity to buy"),
                                    elevation: 5.0,
                                    content: Container(
                                      height: 150.0,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text("Guava: Rs.50/kg",style: TextStyle(
                                              fontSize: 25.0
                                          ),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              RaisedButton(
                                                child: Icon(Icons.exposure_neg_1),
                                                elevation: 8.0,
                                                color: Colors.red,
                                                onPressed: (){
                                                  setState(() {
                                                    guavaquantity--;
                                                  });
                                                },
                                              ),
                                              RaisedButton(
                                                child: Icon(Icons.exposure_plus_1),
                                                elevation: 8.0,
                                                color: Colors.lightGreenAccent,
                                                onPressed: (){
                                                  setState(() {

                                                    guavaquantity++;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                );
                              }
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 16.0),
                            width: 180.0,
                            height: 350.0,
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
                                      radius: 65,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: Text("Guava",style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                  )
                                ],
                              ),
                            )
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          showDialog(context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context){
                                return AlertDialog(
                                    title: Text("Select quantity to buy"),
                                    elevation: 5.0,
                                    content: Container(
                                      height: 150.0,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text("Strawberry: Rs.100/kg",style: TextStyle(
                                              fontSize: 25.0
                                          ),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              RaisedButton(
                                                child: Icon(Icons.exposure_neg_1),
                                                elevation: 8.0,
                                                color: Colors.red,
                                                onPressed: (){
                                                  setState(() {
                                                    strawberryquantity--;
                                                  });
                                                },
                                              ),
                                              RaisedButton(
                                                child: Icon(Icons.exposure_plus_1),
                                                elevation: 8.0,
                                                color: Colors.lightGreenAccent,
                                                onPressed: (){
                                                  setState(() {

                                                    strawberryquantity++;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                );
                              }
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 16.0),
                            width: 180.0,
                            height: 350.0,
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
                                      radius: 65,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: Text("Strawberry",style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                  )
                                ],
                              ),
                            )
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          showDialog(context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context){
                                return AlertDialog(
                                    title: Text("Select quantity to buy"),
                                    elevation: 5.0,
                                    content: Container(
                                      height: 150.0,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text("Orange: Rs.40/kg",style: TextStyle(
                                              fontSize: 25.0
                                          ),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              RaisedButton(
                                                child: Icon(Icons.exposure_neg_1),
                                                elevation: 8.0,
                                                color: Colors.red,
                                                onPressed: (){
                                                  setState(() {
                                                    orangequantity--;
                                                  });
                                                },
                                              ),
                                              RaisedButton(
                                                child: Icon(Icons.exposure_plus_1),
                                                elevation: 8.0,
                                                color: Colors.lightGreenAccent,
                                                onPressed: (){
                                                  setState(() {

                                                    orangequantity++;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                );
                              }
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 16.0),
                            width: 180.0,
                            height: 350.0,
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
                                      radius: 65,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: Text("Orange",style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                  )
                                ],
                              ),
                            )
                        ),
                      ),

                    ],
                  )
              ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_farmket/paymentPages/paymentMethod.dart';

class ProductPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ProductPageState();
  }
}

class ProductPageState extends State<ProductPage>{



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Material(
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text("Cart"),

              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.shopping_cart),
                )
              ],
            ),


            floatingActionButton: FloatingActionButton.extended(
              elevation: 10.0,
              backgroundColor: Colors.blue,
             label: Text("Continue",style: TextStyle(
               color: Colors.white
             ),),
              icon: Icon(Icons.check,color: Colors.white,),
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethod()));
              },
            ),

            body: ListView(
              children: <Widget>[
                Container(
                height: 100.0,

                child: Stack(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.only(right: 50.0,top: 5.0,bottom: 5.0),
                      elevation: 5.0,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 100.0,
                              child: Image.network("https://www.fastnewsfeed.com/wp-content/uploads/2019/04/benefits-of-apple-for-skin.jpg"),
                            ),
                          ),

                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 5.0),
                                child: Text("Apples",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0
                                ),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 20.0,left: 3.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Rate: Rs.100/kg",style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200
                                    ),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text("Quantity: 20",style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200
                                      ),),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            width: 60.0,
                            margin: EdgeInsets.all(15.0),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green,
                                        Colors.lightGreenAccent,
                                      ]
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(Icons.exposure,color: Colors.white,),
                                  Text("Edit",style: TextStyle(
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
            ),

                Container(
                height: 100.0,

                child: Stack(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.only(right: 50.0,top: 5.0,bottom: 5.0),
                      elevation: 5.0,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 100.0,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEeAqvLNutqtV1U9oOOJ7v8AuGsG41quB9QowDSYJpoJK-QZlLlg&s"),
                            ),
                          ),

                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 5.0),
                                child: Text("Grapes",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0
                                ),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 20.0,left: 3.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Rate: Rs.80/kg",style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200
                                    ),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text("Quantity: 9",style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200
                                      ),),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            width: 60.0,
                            margin: EdgeInsets.all(15.0),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green,
                                        Colors.lightGreenAccent,
                                      ]
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(Icons.exposure,color: Colors.white,),
                                  Text("Edit",style: TextStyle(
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
            ),

            Container(
                height: 100.0,

                child: Stack(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.only(right: 50.0,top: 5.0,bottom: 5.0),
                      elevation: 5.0,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 100.0,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsenqJVV0AM9gdUPFVmr7pM3LeGScwTHAfVl2JFnN71D3gCHHs6w&s"),
                            ),
                          ),

                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 5.0),
                                child: Text("Banana",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0
                                ),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 20.0,left: 3.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Rate: Rs.60/dozen",style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200
                                    ),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text("Quantity: 15",style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200
                                      ),),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            width: 60.0,
                            margin: EdgeInsets.all(15.0),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green,
                                        Colors.lightGreenAccent,
                                      ]
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(Icons.exposure,color: Colors.white,),
                                  Text("Edit",style: TextStyle(
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
            ),

            Container(
                height: 100.0,

                child: Stack(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.only(right: 50.0,top: 5.0,bottom: 5.0),
                      elevation: 5.0,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 100.0,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzhDcKh-I8Axr9JltZtJ2WLftxyPjISgxaZcDhE6mrNHDPoVnw&s"),
                            ),
                          ),

                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 5.0),
                                child: Text("Watermelon",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0
                                ),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 20.0,left: 3.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Rate: Rs.100/kg",style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200
                                    ),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text("Quantity: 20",style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200
                                      ),),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            width: 60.0,
                            margin: EdgeInsets.all(15.0),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green,
                                        Colors.lightGreenAccent,
                                      ]
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(Icons.exposure,color: Colors.white,),
                                  Text("Edit",style: TextStyle(
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
            ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
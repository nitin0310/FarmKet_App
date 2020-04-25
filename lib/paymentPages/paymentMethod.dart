import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PaymentMethodState();
  }
}

class PaymentMethodState extends State<PaymentMethod>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        }),
        title: Text("Select your method to pay:",style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.blue
      ),

      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0,left: 3.0,right: 3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  height: 260,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top: 20.0,left: 20.0),
                          child: Text("**** **** **** ****",style: TextStyle(
                              fontSize: 28.0
                          ),)
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 70.0,left: 5.0),
                          child: Container(
                            width: (MediaQuery.of(context).size.width)/2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text("Expiry",style: TextStyle(
                                        fontSize: 25.0
                                    ),),
                                    Container(
                                      margin: EdgeInsets.all(5.0),
                                      child: Text("MM/YY",style: TextStyle(
                                          fontSize: 15.0
                                      ),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("CVV",style: TextStyle(
                                        fontSize: 25.0
                                    ),),
                                    Text("***",style: TextStyle(
                                        fontSize: 15.0
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          )
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15.0,bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("Your Name",style: TextStyle(
                              fontSize: 25.0,
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 220.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      gradient: LinearGradient(
                          colors: [
                            Colors.deepPurpleAccent,
                            Colors.lightBlueAccent,
                          ]
                      )
                  ),
                ),
              ),

            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
              onPressed: (){},
              color: Colors.black26,
              elevation: 5.0,
              child: Text('Click to add card',style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w300
              ),)
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30.0),
            child: Divider(),
          ),
          Container(
            height: 200.0,
            child: Column(
              children: <Widget>[
                Container(
                  margin:EdgeInsets.only(top: 20.0,left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("else use...",style: TextStyle(
                        fontSize: 18.0
                      ),),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.all(32.0),
                    height: 90.0,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 5.0,right: 20.0),
                            child: Text("Paytm",style: TextStyle(
                              color: Colors.blue,
                              fontSize: 30.0
                            ),),
                          ),
                          Row(
                            children: <Widget>[
                              Text("Tap to add",style: TextStyle(
                                fontSize: 16.0,
                              ),),
                              Icon(Icons.touch_app)
                            ],
                          )
                        ],
                      )
                    ),
                  ),
                )

              ],
            ),
          )
        ],
      )
    );
  }
}
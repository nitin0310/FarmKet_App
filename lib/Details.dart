import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return DetailsState();
  }
}

class DetailsState extends State<Details>{

  var contact=9876543210;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        margin: EdgeInsets.only(top: 15.0),
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.white10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Text("You LoggedIn as...",
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 24.0,
                ),),
              ),

              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("images/download.jpg"),
                      radius: 35.0,
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 19.0),
                        child: Text("John Williomson",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),),
                      ),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 12.0,right:12.0),
                child: Divider(
                  thickness: 1.0,
                  color: Colors.black,
                ),
              ),

              Padding(padding: EdgeInsets.all(9.0),
                child: Row(
                  children: <Widget>[
                    Text("Contact :",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Text("$contact",style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right:25.0),
                    child: IconButton(icon: Icon(Icons.edit),
                    onPressed: (){},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
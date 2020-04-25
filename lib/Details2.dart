import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details2 extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return DetailsState2();
  }
}

class DetailsState2 extends State<Details2>{

  var contact=9876543210;
  var address="Sector 9, Chandigarh\nPunjab, India";

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        margin: EdgeInsets.only(top: 7.0),
        height: 190,
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
                child: Text("Provided Address...",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 24.0,
                  ),),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("$address",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
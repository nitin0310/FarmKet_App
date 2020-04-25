import 'package:flutter/material.dart';

class Homecontainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
        Stack(
          children: <Widget>[
      Container(
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(87.0),
              bottomLeft: Radius.circular(157.0),
              topRight: Radius.circular(157.0),
            ),
            color: Colors.green

          ),
        ),
        height: 250,
        width: MediaQuery.of(context).size.width,
      ),

    Container(
    child: DecoratedBox(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [
    Colors.green,
    Colors.yellow
    ]
    ),
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(75.0),
    bottomLeft: Radius.circular(145.0),
    topRight: Radius.circular(145.0),
    )
    )
    ),
    height: 230.0,
    width: MediaQuery.of(context).size.width,
    ),

      ],
      );
  }

}
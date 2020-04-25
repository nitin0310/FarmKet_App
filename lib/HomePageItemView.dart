import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'PremiumPage.dart';

class HomePageItemView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HomePageItemViewState();
  }
}

class HomePageItemViewState extends State<HomePageItemView> with SingleTickerProviderStateMixin{

  AnimationController _animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _animationController=AnimationController(duration: Duration(milliseconds: 2000),vsync: this);
    animation=Tween<double>(begin: 10.0,end: 30.0).animate(_animationController)
    ..addStatusListener((status){
      if(status==AnimationStatus.completed){
        _animationController.reverse();
      }
      else if(status==AnimationStatus.dismissed)
        {
          _animationController.forward();
        }
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 20.0,right: 10.0),
            height: 50.0,
            width: 150.0,
            child: DecoratedBox(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:5.0,right: 10.0),
                    child: Text("Get Premium",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Expanded(
                    child: IconButton(icon: Icon(Icons.person_add),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>PremiumPage()
                        ));
                      },
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(colors: [
                    Colors.black54,
                    Colors.black87,
                  ],
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight,
                  )
              ),
            )
        )
      ],
    );
  }
}
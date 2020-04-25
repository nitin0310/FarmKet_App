import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return FeedbackPageState();
  }
}

class FeedbackPageState extends State<FeedbackPage>{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0,left: 10.0,right: 10.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3.0,
                      color: Colors.yellow)
              ),
              icon: Icon(Icons.assignment),
              hintText: "Enter Feedback",
              labelText: "Feedback",
              hoverColor: Colors.green,
            ),
            keyboardType: TextInputType.text,
          ),
        ],
      )
    );
  }
}
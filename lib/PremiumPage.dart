import 'package:flutter/material.dart';

class PremiumPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return PremiumPageState();
  }
}

class PremiumPageState extends State<PremiumPage>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            elevation: 10.0,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios),
                onPressed: (){
              Navigator.pop(context);
                }
            ),
            title: Text("Premium Page"),
          ),
        ),
      ),
    );
  }
}
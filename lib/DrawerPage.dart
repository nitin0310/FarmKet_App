import 'package:flutter/material.dart';
import 'package:flutter_farmket/AboutFarmket.dart';
import 'package:flutter_farmket/paymentPages/paymentMethod.dart';

class DrawerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DrawerPageState();
  }
}

class DrawerPageState extends State<DrawerPage>{
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child:
      Column(
        children: <Widget>[
          Stack(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top:40.0,left:3,right:3,bottom:6.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.all(Radius.circular(25.0))
                  ),
                  height: 230.0,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:60.0,left:10,right:10,bottom:15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("images/pp.jpg"),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(25.0))
                  ),
                  height: 160.0,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:200.0,left:105,right:10,bottom:15.0),
                child: Hero(
                  tag: "logo",
                  child: Container(
                   child: Padding(
                     padding: const EdgeInsets.only(top:10.0,left:22.0),
                     child: InkWell(
                       splashColor: Colors.white,
                       child: GestureDetector(
                         onTap: (){
                           Navigator.pop(context);
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutFarmket()));
                         },
                         child: Text("Click it",style: TextStyle(
                             color: Colors.white,
                           fontWeight: FontWeight.bold
                         ),),
                       ),
                     ),
                   ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.green,
                            Colors.yellow,
                          ]
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25.0))
                    ),
                    height: 40.0,
                    width: 90,
                  ),
                ),
              ),


            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8,left: 13,right: 13,bottom: 8),
            child: Divider(
              thickness: 1.5,
            ),
          ),

          Stack(
            children:[
              Padding(
                padding: EdgeInsets.only(left: 4.0,right: 6.0,top: 4.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(Radius.circular(25.0))
                ),
                height: 50.0,
              ),
            ),
              ListTile (
                leading: Icon ( Icons.account_circle,
                  color: Colors.white,
                ),
                title: Text ( "Account Change",
                  style: TextStyle (
                      color: Colors.greenAccent
                  ),
                ),
                trailing: IconButton (
                    icon: Icon ( Icons.navigate_next,
                      color: Colors.white,
                    )
                    , onPressed: (){}),
              ),
          ],
          ),


    Stack(
    children:[
    Padding(
    padding: EdgeInsets.only(left: 4.0,right: 136.0,top: 4.0),
    child: Container(
    decoration: BoxDecoration(
    color: Colors.black26,
    borderRadius: BorderRadius.all(Radius.circular(25.0))
    ),
    height: 50.0,
    ),
    ),
      ListTile(
        leading: Icon(Icons.payment,
          color: Colors.white,
        ),
        title: Text("Add Payment",
          style: TextStyle(
              color: Colors.greenAccent
          ),
        ),
        trailing: IconButton(
            icon: Icon(Icons.navigate_next,
              color: Colors.white,
            )
            , onPressed: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethod()));
            }),
      ),

    ]
    ),

          Stack(
              children:[
                Padding(
                  padding: EdgeInsets.only(left: 4.0,right: 96.0,top: 4.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.all(Radius.circular(25.0))
                    ),
                    height: 50.0,
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.branding_watermark,
                    color: Colors.white,
                  ),
                  title: Text("More Brands",
                    style: TextStyle(
                        color: Colors.greenAccent
                    ),
                  ),
                  trailing: IconButton(
                      icon: Icon(Icons.navigate_next,
                        color: Colors.white,
                      )
                      , onPressed: (){}),
                ),

              ]
          ),

          Stack(
              children:[
                Padding(
                  padding: EdgeInsets.only(left: 4.0,right: 170.0,top: 4.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.all(Radius.circular(25.0))
                    ),
                    height: 50.0,
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text("Settings",
                    style: TextStyle(
                        color: Colors.greenAccent
                    ),
                  ),
                  trailing: IconButton(
                      icon: Icon(Icons.navigate_next,
                        color: Colors.white,
                      )
                      , onPressed: (){}),
                ),

              ]
          ),

          Stack(
              children:[
                Padding(
                  padding: EdgeInsets.only(left: 4.0,right: 26.0,top: 4.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.all(Radius.circular(25.0))
                    ),
                    height: 50.0,
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.library_books,
                    color: Colors.white,
                  ),
                  title: Text("Policies",
                    style: TextStyle(
                        color: Colors.greenAccent
                    ),
                  ),
                  trailing: IconButton(
                      icon: Icon(Icons.navigate_next,
                        color: Colors.white,
                      )
                      , onPressed: (){}),
                ),

              ]
          ),
            ],
      ),

    );
  }
}
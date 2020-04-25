import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AboutFarmket extends StatefulWidget {
  @override
  _AboutFarmketState createState() => _AboutFarmketState();
}

class _AboutFarmketState extends State<AboutFarmket> {

  bool subscribe=false;
  Color subscolor=Colors.red;
  Text substitle=Text("SUBSCRIBE TO UPDATES",style: TextStyle(
    color: Colors.white,
    fontSize: 15.0,
    fontWeight: FontWeight.w800,
  ),);

  int _current=0;

  List imgList=[
    'https://images.unsplash.com/photo-1515150144380-bca9f1650ed9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1500937386664-56d1dfef3854?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1492496913980-501348b61469?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1527847263472-aa5338d178b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=753&q=80',
    'https://images.unsplash.com/photo-1464226184884-fa280b87c399?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          elevation: 5.0,
          backgroundColor: Colors.green,
          label: Text("Back",style: TextStyle(color: Colors.white),),
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(top: 25.0),
                  height: 350.0,
                  decoration: BoxDecoration(

                  ),
                  child: CarouselSlider(
                    enlargeCenterPage: true,
                    height: 350.0,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 2000),
                    pauseAutoPlayOnTouch: Duration(milliseconds: 3000),
                    onPageChanged: (index){
                      setState(() {
                        _current=index;
                      });
                    },
                    items: imgList.map((imgUrl){
                      return Builder(
                        builder: (BuildContext context){
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.yellow,
                                Colors.lightGreenAccent,
                                ])
                            ),
                            child: Image.network(imgUrl,
                            fit: BoxFit.fill,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 5.0,
                ),

                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      RaisedButton(
                        color: subscolor,
                        elevation: 4.0,
                        onPressed: (){
                          setState(() {
                            if(subscribe==true){
                              subscribe=false;
                              subscolor=Colors.red;
                              substitle=Text("SUBSCRIBE TO UPDATES",style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w800,
                              ),);
                            }
                            else{
                              subscribe=true;
                              subscolor=Colors.green;
                              substitle=Text("UNSUBSCRIBE",style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w800,
                              ),);
                            }
                          });
                        },
                        child: substitle,
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 55.0,
                    right: 55.0,
                  ),
                  child: Divider(
                    thickness: 2.0,
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(left: 45.0,top: 10.0),
                      child: Text("About",style: TextStyle(
                          color: Colors.black,
                        fontFamily: 'Pacifico',
                          fontWeight: FontWeight.w400,
                          fontSize: 25.0,

                      ),),
                    ),

                    Container(
                      height: 260.0,
                      margin: EdgeInsets.only(left: 15.0,top: 20.0,right: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white70
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0,right: 8.0,left: 8.0),
                        child: Text("It's been said from the very onset of the human civilization that humans are the "+
                        "greatest assets of this world.What we believe Farmket is,that not only they're the greatest but"+
                            " the most productive beings ever! By keeping this in mind we've designed a platform full of"+
                            " the most productive and greatest humankind possible!",style:TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Pacifico'
                        ),
                        ),
                      ),
                    )
                  ],
                ),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(left: 45.0),
                      child: Text("Our Story",style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.w400,
                        fontSize: 25.0,

                      ),),
                    ),

                    Container(
                      height: 390.0,
                      margin: EdgeInsets.only(left: 15.0,top: 20.0,right: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.white70
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0,right: 8.0,left: 8.0),
                        child: Text("We started off with a very humble beginning consisting of very "+
                          "limited resources and only a dedicated team of people whose life is devoted "+
                          "to working towards the betterment of the farming sector in India! We've always "+
                          "worked considering the farmers as our deities cause they provide us the basic "+
                          "nutrients to work our body out! We workship our work as much as we workship the "+
                          "farmers of our country and we always look forward to serve you in the best way possible!"
                        ,style:TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Pacifico'
                        ),
                        ),
                      ),
                    )
                  ],
                ),



                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(left: 45.0),
                      child: Text("Our Mission",style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.w400,
                        fontSize: 25.0,

                      ),),
                    ),

                    Container(
                      height: 310.0,
                      margin: EdgeInsets.only(left: 15.0,top: 20.0,right: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.white70
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0,right: 8.0,left: 8.0),
                        child: Text("A great man once said,Work today as you've to die tomorrow "+
                          "and at Farmket are the greatest believers of that philosophy!"+
                          "We are at a mission to completely transform the Agricultural Industry in India "+
                          "to a whole new level generating wealth and prosperity among the farmers and whole "+
                          "of the industry!We consider our MISSION as our OBSESSION."
                        ,style:TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Pacifico'
                        ),
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(left: 45.0),
                      child: Text("Our Promise",style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.w400,
                        fontSize: 25.0,

                      ),),
                    ),

                    Container(
                      height: 200.0,
                      margin: EdgeInsets.only(left: 15.0,top: 20.0,right: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.white70
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0,right: 8.0,left: 8.0),
                        child: Text("We deliver a whole new level of customer experience in "+
                          "Agriculture never ever experienced before in the industry!"+
                          " Our promise is to keep the experience to the highest level."
                          ,style:TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Pacifico'
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(left: 45.0),
                      child: Text("Our Vibe",style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.w400,
                        fontSize: 25.0,

                      ),),
                    ),

                    Container(
                      height: 180.0,
                      margin: EdgeInsets.only(left: 15.0,top: 20.0,right: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.white70
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0,right: 8.0,left: 8.0),
                        child: Text("The work ethic at Farmket is no question of immense purity."+
                          "We consider in equality and fairness of work.We never believe in "+
                          "degrading our vibe of awesomeness."
                          ,style:TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Pacifico'
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(left: 45.0),
                      child: Text("Conclusion",style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.w400,
                        fontSize: 25.0,

                      ),),
                    ),

                    Container(
                      height: 260.0,
                      margin: EdgeInsets.only(left: 15.0,top: 20.0,right: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.white70
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0,right: 8.0,left: 8.0),
                        child: Text("We strive each and everyday to be better than our past"+
                          " self and work qualit.We look forward to serve you best and have "+
                          "great experience ahead with Farmket!\nThank you For Being With Us!\nTeam Farmket."
                          ,style:TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Pacifico'
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


              ],
            ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_farmket/IntroPage.dart';

class SignUpPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SignUpPageState();
  }
}

class SignUpPageState extends State<SignUpPage> with SingleTickerProviderStateMixin{

  Animation animation,delayAnimation,muchDelayAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 2));
    animation=Tween(begin: -1,end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    ));
    delayAnimation=Tween(begin: -1,end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0,curve: Curves.fastOutSlowIn)
    ));
    muchDelayAnimation=Tween(begin: -1,end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.8, 1.0,curve: Curves.fastOutSlowIn)
    ));
  }
  @override
  Widget build(BuildContext context) {

    double width=MediaQuery.of(context).size.width;
    animationController.forward();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Material(
        child: AnimatedBuilder(
            animation: animationController,
            builder: (BuildContext context,Widget child){
              return SafeArea(
                child: Scaffold(
                    body: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 15.0),
                        child: Column(
                          children: <Widget>[
                            Transform(
                              transform: Matrix4.translationValues(animation.value*width, 0.0, 0.0),
                              child: Container(
                                height: 300.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(55.0),
                                    bottomLeft: Radius.circular(55.0),
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.lightGreenAccent,
                                      Colors.green,
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                  ),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Sign Up",style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Pacifico',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 58.0,
                                      ),),
                                      Text("Complete a step.",style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Pacifico',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 28.0
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Transform(
                              transform: Matrix4.translationValues(delayAnimation.value*width, 0.0, 0.0),
                              child: Card(
                                margin: EdgeInsets.only(top: 30.0),
                                child: Form(
                                  autovalidate: true,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left: 25.0,right: 25.0,bottom: 15.0,top: 10.0),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            labelText: "Email",
                                            hintText: "Enter Email",
                                          ),
                                          onChanged: (email){},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 25.0,right: 25.0,bottom: 20.0,),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            labelText: "Contacts",
                                            hintText: "Enter Mobile no.",
                                          ),
                                          onChanged: (contact){},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 25.0,right: 25.0,bottom: 20.0,),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            labelText: "Password",
                                            hintText: "Enter Password",
                                          ),
                                          onChanged: (password){},
                                          obscureText: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                elevation: 5.0,
                              ),
                            ),

                            Transform(
                              transform: Matrix4.translationValues(muchDelayAnimation.value*width, 0.0, 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: (){},
                                    child: Card(
                                      elevation: 7.0,
                                      margin: EdgeInsets.only(left: 30.0,right: 30.0,top: 25.0),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 90.0,right: 90.0,top: 5.0,bottom: 5.0),
                                        child: Text("Sign Up",style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize:15.0,
                                            color: Colors.white,
                                            fontFamily: 'Pacifico'
                                        ),),
                                      ),
                                      color: Colors.lightGreenAccent,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(25.0))
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Card(
                                      elevation: 5.0,
                                      margin: EdgeInsets.only(left: 30.0,right: 30.0,top: 25.0),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 70.0,right: 70.0,top: 5.0,bottom: 5.0),
                                        child: Text("Sign up with facebook",style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize:15.0,
                                            color: Colors.blue,
                                            fontFamily: 'Pacifico'
                                        ),),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(25.0))
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Transform(
                              transform: Matrix4.translationValues(muchDelayAnimation.value*width, 0.0, 0.0),
                              child: Container(
                                margin: EdgeInsets.only(top: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text("Already a member?",style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Pacifico'
                                    ),),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.pop(context);
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>IntroPage()));
                                      },
                                      child: Card(
                                        elevation: 4.0,
                                        margin: EdgeInsets.all(5.0),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 5.0,bottom: 5.0,left: 7.0,right: 7.0),
                                          child: Text("Login",style: TextStyle(
                                              color: Colors.lightGreenAccent,
                                              fontFamily: 'Pacifico',
                                              shadows: [
                                                Shadow(
                                                  color:Colors.green,
                                                  blurRadius: 0.5,
                                                )
                                              ]
                                          ), ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                ),
              );
            }
        ),
      ),
    );
  }
}
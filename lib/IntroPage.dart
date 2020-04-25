
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_farmket/SignUp.dart';
import 'package:flutter_farmket/main.dart';

class IntroPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return IntroPageState();
  }
}

class IntroPageState extends State<IntroPage> with SingleTickerProviderStateMixin{

  GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  String _email;
  var _password;

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
                                Text("Farmket",style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 58.0,
                                ),),
                                Text("welcomes you.",style: TextStyle(
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
                            key: _formkey,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0,right: 25.0,bottom: 15.0,top: 10.0),
                                  child: TextFormField(
                                    validator: (input){
                                      if(!input.endsWith("@gmail.com")){
                                        return "Please enter a valid email";
                                      }
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Email",
                                      hintText: "Enter Email",
                                    ),
                                    onSaved: (input){
                                      _email=input;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0,right: 25.0,bottom: 20.0,),
                                  child: TextFormField(
                                    validator: (input){
                                      if(input.length<6){
                                        return "Enter a valid password";
                                      }
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                      hintText: "Enter Password",
                                    ),
                                    obscureText: true,
                                    onSaved: (input){
                                      _password=input;
                                    },
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
                              onTap: (){
                                LogInUser();
                              },
                              child: Card(
                                elevation: 7.0,
                                margin: EdgeInsets.only(left: 30.0,right: 30.0,top: 25.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 90.0,right: 90.0,top: 5.0,bottom: 5.0),
                                  child: Text("Login",style: TextStyle(
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
                                  padding: const EdgeInsets.only(left: 90.0,right: 90.0,top: 5.0,bottom: 5.0),
                                  child: Text("Log in with facebook",style: TextStyle(
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
                              Text("New User?",style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Pacifico'
                              ),),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                                },
                                child: Card(
                                  elevation: 4.0,
                                  margin: EdgeInsets.all(5.0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5.0,bottom: 5.0,left: 7.0,right: 7.0),
                                    child: Text("Sign Up",style: TextStyle(
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

  void LogInUser(){
    final _formstate=_formkey.currentState;
    if(_formstate.validate()){
      _formstate.save();
      Navigator.pop(context);
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
    }
  }
}
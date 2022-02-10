import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/loginscreens/forgotpassword.dart';
import 'package:ibafass/view/loginscreens/signup.dart';
import 'package:ibafass/view/menubar.dart';



class Signin extends StatefulWidget {


  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    final myheight= MediaQuery.of(context).size.height;
    final  mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: myheight /13),
                Container(
                    child: Text("Sign in Your Account",
                      style: TextStyle(fontWeight:FontWeight.bold,fontSize: 22,color: HexColor('#0F46B3')),
                    )),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Image(image: AssetImage("assets/registration/Sign in.png"),fit:BoxFit.fill,)
                ),),
                 Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("Email",
                      style: TextStyle(fontSize: 16,color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),),
                    child: Container(
                      height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(Icons.person,),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: HexColor('#0F46B3')),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: HexColor('#0F46B3')),
                            ),
                          ),
                    )),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("Password",
                      style: TextStyle(fontSize: 16,color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),),
                      child: Container(
                        height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                    Icons.lock,),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                borderSide: BorderSide(color: HexColor('#0F46B3')),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                borderSide: BorderSide(color: HexColor('#0F46B3')),
                              ),
                            ),
                          ))),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Forgotpassword()),
                      );
                    },
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: Text("Forgot Password?",
                              style: TextStyle(
                                  color: HexColor("#7C8EB2"),
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal)),
                        )),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Center(
                    child: Container(
                        height: 50,
                        width: mywidth,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  MenuBar()),
                            );
                          },
                          color: HexColor("#0F46B3"),
                          child: Text("Sign in",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Signup()),
                      );
                    },
                    child: Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Don't have account?", style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            )),
                        SizedBox(width: 5,),
                        Text("Register Now", style: TextStyle(
                            color: HexColor('#0F46B3'),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                      ],
                    )),
                  ),
                )
              ],
            ),
          ),
        ));
  }


}

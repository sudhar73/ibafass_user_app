import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/loginscreens/signin.dart';


class Signup extends StatefulWidget {

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final myheight= MediaQuery.of(context).size.height;
    final  mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Form(
            key: formGlobalKey,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: myheight / 13),
                    Container(
                        child: Text("Create Your Account",
                            style: TextStyle(fontWeight:FontWeight.bold,fontSize: 22,color: HexColor('#0F46B3'))
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Image(image: AssetImage("assets/registration/Create Your Account.png",),fit:BoxFit.fill,)),
                    ),

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
                                keyboardType: TextInputType.emailAddress,
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
                              ))),
                    ),
                    SizedBox(height: 10),
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
                                    child: Icon(Icons.lock,),
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
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text("Phone Number",
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
                          ))),
                    ),



                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Center(
                        child: Container(
                            height: 50,
                            width: mywidth,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              onPressed: () {

                              },
                              color: HexColor("#0F46B3"),
                              child: Text("Register Now",
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
                            MaterialPageRoute(builder: (context) =>  Signin()),
                          );
                        },
                        child: Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Have account yet?",style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ) ),
                            Text("Sign in",style: TextStyle(
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
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/loginscreens/signin.dart';


class Newpassword extends StatefulWidget {


  @override
  _NewpasswordState createState() => _NewpasswordState();
}

class _NewpasswordState extends State<Newpassword> {
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
                SizedBox(height:myheight/13),
                Container(
                    child: Text("Create New Password",style: TextStyle(
                        color: HexColor('#0F46B3'),
                        fontSize: 22,
                        fontWeight: FontWeight.bold)
                    )),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Image(image: AssetImage("assets/registration/Create New Password.png"))),
                ),

                SizedBox(height: 15),
                Container(
                    child: Text("Your New Password must be Different",style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)
                        )),
                Container(
                    child: Text("from Previously Used Password",style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)
                        )),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("New Password",
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
                          child: TextField(
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
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("Confirm Password",
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
                          child: TextField(
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
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Container(
                        height: 50,
                        width: mywidth/1,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  Signin()),
                            );

                          },
                          color: HexColor("#0F46B3"),
                          child: Text("Save",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

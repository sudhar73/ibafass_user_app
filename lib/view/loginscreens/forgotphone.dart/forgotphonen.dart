import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/loginscreens/forgotphone.dart/verifyphone.dart';


class forgotPhone extends StatefulWidget {


  @override
  _forgotPhoneState createState() => _forgotPhoneState();
}

class _forgotPhoneState extends State<forgotPhone> {
  final formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final myheight= MediaQuery.of(context).size.height;
    final  mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: formGlobalKey,
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height:myheight /13),
                  Container(
                      child: Text("Forgot Password",
                          style: TextStyle(
                              color: HexColor('#0F46B3'),
                              fontSize: 22,
                              fontWeight: FontWeight.bold)
                      )),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Image(image: AssetImage("assets/registration/Forgot Password.png"))),
                  ),
                  SizedBox(height: 15),
                  Container(
                      child: Text("Please Enter Your Phone Number to",style: TextStyle(
                          color: HexColor('#0F46B3'),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)
                          )),
                  Container(
                      child: Text("Receive a Verification Code",style: TextStyle(
                          color: HexColor('#0F46B3'),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)
                          )),
                  SizedBox(
                    height: 40,
                  ),
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
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.call,),
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

                  SizedBox(height: myheight/8),
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

                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>Verifyphone ()),
                              );
                            },
                            color: HexColor("#0F46B3"),
                            child: Text("Send",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold)),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

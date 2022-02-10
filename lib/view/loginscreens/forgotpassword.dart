import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/loginscreens/verifyemail.dart';


class Forgotpassword extends StatefulWidget {

  @override
  _ForgotpasswordState createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
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
                  SizedBox(height:myheight/13),
                  Container(
                      child: Text("Forgot Password",style: TextStyle(
                          color: HexColor('#0F46B3'),
                          fontSize: 22,
                          fontWeight: FontWeight.bold)
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                    child: Container(
                        margin: EdgeInsets.all(15),
                        child: Image(image: AssetImage("assets/registration/Forgot Password.png"))),
                  ),

                  SizedBox(height: 15),
                  Container(
                      child: Text("Please Enter Your Email Address to",style: TextStyle(
                          color: HexColor('#0F46B3'),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)
                      ),),
                  Container(
                      child: Text("Receive a Verification Code",style: TextStyle(
                          color:HexColor('#0F46B3'),
                          fontSize: 16,
                          fontWeight: FontWeight.bold))),
                  SizedBox(
                    height: 20,
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
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  SizedBox(height: 10),
                  Container(
                      child: Text("Try another way",style: TextStyle(
                          color: HexColor('#0F46B3'),
                          fontSize: 15,
                          fontWeight: FontWeight.bold)
                          )),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                        height: 50,
                                width: mywidth,
                                child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.push(
                              context,
                                  MaterialPageRoute(builder: (context) =>  Verifyemial()),
                            );
                          },
                          color: HexColor("#0F46B3"),
                          child: Text("Send",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

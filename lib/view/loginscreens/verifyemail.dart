import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/loginscreens/forgotphone.dart/forgotphonen.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Verifyemial extends StatefulWidget {


  @override
  _VerifyemialState createState() => _VerifyemialState();
}

class _VerifyemialState extends State<Verifyemial> {
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
                    child: Text("Verify Your Email",style: TextStyle(
                        color: HexColor('#0F46B3'),
                        fontSize: 22,
                        fontWeight: FontWeight.bold)
                    )),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Image(image: AssetImage("assets/registration/Verify Your Email.png"))),
                ),

                SizedBox(height: 15),
                Container(
                    child: Text("Please Enter 4 Digit Code Sent to",style: TextStyle(
                        color:Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)

                       )),
                Container(
                    child: Text("mani1995@gmail.com",style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                        )),
                SizedBox(height: myheight/13,),
                OtpTextField(
                  margin: EdgeInsets.only(right: 20),
                  numberOfFields: 5,
                  borderColor: HexColor('#0F46B3'),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        }
                    );
                  }, // end onSubmit
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(2.0),

                ),
                SizedBox(height: 10),
                Container(
                    child: Text("Resend Code",style: TextStyle(
                        color: HexColor('#0F46B3'),
                        fontSize: 15,
                        fontWeight: FontWeight.bold)
                      )),
                SizedBox(height:myheight/10),
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
                              MaterialPageRoute(builder: (context) =>   forgotPhone()),
                            );
                          },
                          color: HexColor("#0F46B3"),
                          child: Text("Verify",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20 ,
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

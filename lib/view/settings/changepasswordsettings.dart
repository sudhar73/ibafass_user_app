import 'package:flutter/material.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
import 'package:hexcolor/hexcolor.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _isHiddenPassword = true;
  bool Selected=true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: AppBar(
        backgroundColor: HexColor('#0F46B3'),
        title: Text('Change Password', style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed:(){},
              icon: Icon(Icons.more_vert, color: Colors.white,))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Container(

                decoration: BoxDecoration(

                    color:Colors.red,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0))),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(40.0))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Old Password:', style: TextStyle(
                                color: Colors.grey, fontSize: 16),),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20.0),
                            child: TextFormField(
                              obscureText: _isHiddenPassword,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: passwordView,
                                icon: Icon(_isHiddenPassword?Icons.visibility:Icons.visibility_off)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)),
                                    borderSide: BorderSide(color: HexColor('#0F46B3'))),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('New Password:', style: TextStyle(
                                color: Colors.grey, fontSize: 16),),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20.0),
                            child: TextFormField(
                              obscureText: _isHiddenPassword,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: passwordView,
                                    icon: Icon(_isHiddenPassword?Icons.visibility:Icons.visibility_off)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)),
                                    borderSide: BorderSide(color: HexColor('#0F46B3'))),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Confirm Password:', style: TextStyle(
                                color: Colors.grey, fontSize: 16),),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20.0),
                            child: TextFormField(
                              obscureText: _isHiddenPassword,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: passwordView,
                                    icon: Icon(_isHiddenPassword?Icons.visibility:Icons.visibility_off)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)),
                                    borderSide: BorderSide(color: HexColor('#0F46B3'))),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: GFCheckbox(
                                  size: GFSize.SMALL,
                                  activeBorderColor: Colors.green,
                                  inactiveBorderColor: HexColor('#0F46B3'),
                                  type: GFCheckboxType.basic,
                                  activeBgColor: Colors.green,
                                  inactiveBgColor: HexColor('#E9F5FF'),
                                  onChanged: (val)=>setState(() {
                                    this.Selected=!this.Selected;
                                  }), value: Selected,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('Sign out of all devices',style: TextStyle(fontSize: 14 ,color: Colors.grey),),
                              ),
                            ],
                          ),
                          SizedBox(height:30),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 60,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 1.15,
                      child: RaisedButton(
                        onPressed: () {},
                        color: HexColor('#0F46B3'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "SAVE",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void passwordView() {
    setState(() {
      _isHiddenPassword=!_isHiddenPassword;
    });
  }
}
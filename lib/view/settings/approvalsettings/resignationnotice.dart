import 'package:flutter/material.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hexcolor/hexcolor.dart';
class ResignationNotice extends StatefulWidget {
  const ResignationNotice({Key? key}) : super(key: key);

  @override
  _ResignationNoticeState createState() => _ResignationNoticeState();
}

class _ResignationNoticeState extends State<ResignationNotice> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: AppBar(
        backgroundColor: HexColor('#0F46B3'),
        elevation: 0.0,
        title: Text('Approval Setttings',style: TextStyle(
            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: HexColor('#DCF4F9'),borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height/18,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height/5,
                                width: MediaQuery.of(context).size.width/3,
                                decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(offset: Offset(0,3.0),blurRadius: 6,color: Colors.grey)],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Image(image: AssetImage('assets/settings/expenseapprovalboldicon.png')),
                                      SizedBox(height: 10,),
                                      Text('Expenses Approval',style:
                                      TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 12),),
                                    ])
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height/5,
                              width: MediaQuery.of(context).size.width/3,
                              decoration: BoxDecoration(
                                  boxShadow: [BoxShadow(offset: Offset(0,3.0),blurRadius: 6,color: Colors.grey)],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Image(image: AssetImage('assets/settings/leaveapproval.png')),
                                    SizedBox(height: 10,),
                                    Text('Leave Approval',style:
                                    TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 12),),
                                  ]),
                            )
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/5,
                              width: MediaQuery.of(context).size.width/3,
                              decoration: BoxDecoration(
                                  boxShadow: [BoxShadow(offset: Offset(0,3.0),blurRadius: 6,color: Colors.grey)],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage('assets/settings/offerapproval.png')),
                                  SizedBox(height: 10,),
                                  Text('Offer Approval',style:
                                  TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 12),),

                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height/5,
                              width: MediaQuery.of(context).size.width/3,
                              decoration: BoxDecoration(
                                  boxShadow: [BoxShadow(offset: Offset(0,3.0),blurRadius: 6,color: Colors.grey)],
                                  color: HexColor('#5A74FF'),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Image(image: AssetImage('assets/settings/resignationnotice.png')),
                                    SizedBox(height: 10,),
                                    Text('Resignation Approval',style:
                                    TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 12),),
                                  ]),

                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('Resignation Notice',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height/2.4,
                            width: MediaQuery.of(context).size.width/1.10,
                            decoration: BoxDecoration(
                                boxShadow: [BoxShadow(offset: Offset(0,3.0),blurRadius: 6,color: Colors.grey)],
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20.0))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text('Email Notification',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15,color: Colors.black),),
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text('Simultaneous Approval',style: TextStyle(fontSize: 14,color: Colors.grey),),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 30.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.grey,)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide(color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide(color: Colors.grey)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Text('Notice Days',style: TextStyle(fontSize: 14,color: Colors.grey),),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 30.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.grey,)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide(color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide(color: Colors.grey)),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),

                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 1.15,
                    child: RaisedButton(
                      onPressed: () {
                      },
                      color: HexColor('#0F46B3'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Save",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],

              ),
            ),
          ],
        ),
      ),

    );
  }
}

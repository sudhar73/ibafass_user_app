import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class invoiceSettings extends StatefulWidget {
  const invoiceSettings({Key? key}) : super(key: key);

  @override
  _invoiceSettingsState createState() => _invoiceSettingsState();
}

class _invoiceSettingsState extends State<invoiceSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: AppBar(
        backgroundColor: HexColor('#0F46B3'),
        title: Text('Invoice settings', style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back),
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
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                decoration: BoxDecoration(
                    color: HexColor('#DCF4F9'),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50.0),
                        topLeft: Radius.circular(50.0))),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50.0))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text('InVoice Logo', style: TextStyle(
                                    fontWeight:FontWeight.bold,color: Colors.black, fontSize: 18),),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Invoice prefix:', style: TextStyle(
                                color: Colors.grey, fontSize: 16),),
                          ),

                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20.0),
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
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Invoice Logo:', style: TextStyle(
                                color: Colors.grey, fontSize: 16),),
                          ),
                          SizedBox(height: 10,),
                          Center(
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width/1.10,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,width: 1.0,),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Container(
                                        height: 40,
                                        width: 120,

                                        decoration: BoxDecoration(color:HexColor('#DBDBDB'),
                                            border: Border.all(color: HexColor('#939393'),width: 1.0,),
                                            borderRadius: BorderRadius.all(Radius.circular(7.0))),
                                      child: Center(child: Text('Choose File',style: TextStyle(color: Colors.black,fontSize: 14),)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Image size is 100px * 50px',style: TextStyle(fontSize: 14,color: Colors.black),),
                          ),
                          SizedBox(height: 50,),
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
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

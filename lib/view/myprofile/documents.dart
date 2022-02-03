import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Documents extends StatefulWidget {
  const Documents({Key? key}) : super(key: key);
  @override
  _DocumentsState createState() => _DocumentsState();

}
class _DocumentsState extends State<Documents> with TickerProviderStateMixin {
  final color = HexColor("#0F46B3");
  final BackgroundColor = HexColor("#DCF4F9");
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.height;
    final myheight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: BackgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  height: myheight / 15,
                  width: mywidth,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: TabBar(
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),
                        color: color,
                      ),
                      tabs: [
                        Text("ID"),
                        Text("certifications"),
                        Text("Work"),
                      ]),
                ),
                SizedBox(
                  height: myheight / 40,
                ),
                Container(
                  height: myheight,
                  child: TabBarView(
                      children: [
                        ID(context),
                        Certificate(context),
                        Work(context),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget ID(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30.0))),
              height: myheight/1.1,
              width: mywidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Basic Proofs :',
                      style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Aadhar Card Number :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width/1.6,
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.download,color: Colors.black,),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.download))
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('PAN Card Number :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(

                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width/1.5,
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.camera_alt_outlined,color:HexColor('#0F46B3'),),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Driving License :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width/1.5,
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.camera,color: Colors.black,),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Passport Number :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width/1.5,
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.camera,color: Colors.black,),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.30,
                      child: RaisedButton(
                        onPressed: () {
                        },
                        color: HexColor('#0F46B3'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Save Details",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30.0))),
              height: myheight/1.1,
              width: mywidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Basic Proofs :',
                      style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Aadhar Card Number :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width/1.6,
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.download,color: Colors.black,),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.download))
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('PAN Card Number :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(

                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width/1.5,
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.camera_alt_outlined,color:HexColor('#0F46B3'),),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Driving License :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width/1.5,
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.camera,color: Colors.black,),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Passport Number :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width/1.5,
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.camera,color: Colors.black,),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.30,
                      child: RaisedButton(
                        onPressed: () {
                        },
                        color: HexColor('#0F46B3'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Save Details",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30.0))),
              height: myheight/1.3,
              width: mywidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Uploaded Documents :',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Type :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0),),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0),),
                            borderSide: BorderSide(color: Colors.grey)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('ID Name :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0),),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0),),
                            borderSide: BorderSide(color: Colors.grey)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Uploaded By :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0),),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0),),
                            borderSide: BorderSide(color: Colors.grey)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Verified By :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0),),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0),),
                            borderSide: BorderSide(color: Colors.grey)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
          ],
        )
    );
  }
  Widget Certificate(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          color:BackgroundColor,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30.0))),
                height: myheight/1.3,
                width: mywidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Uploaded Documents :',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Type :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('ID Name :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Uploaded By :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Verified By :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
  Widget Work(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          color:BackgroundColor,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30.0))),
                height: myheight/1.3,
                width: mywidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Work Details :',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Work Name :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Work Type :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Uploaded By :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Verified By :',style: TextStyle(color: Colors.grey,fontSize: 15),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }

}

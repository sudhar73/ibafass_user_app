import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class BasicSetting extends StatefulWidget {
  const BasicSetting({Key? key}) : super(key: key);

  @override
  _BasicSettingState createState() => _BasicSettingState();
}

class _BasicSettingState extends State<BasicSetting> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: AppBar(
        backgroundColor: HexColor('#0F46B3'),
        title: Text('Basic Settings',style: TextStyle(
            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(

                decoration: BoxDecoration(
                    color: HexColor('#DCF4F9'),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40.0),topLeft: Radius.circular(40.0))),
                child: Column(
                  children: [
                    Center(
                      child: Container(

                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(40.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('Default Country:',style: TextStyle(color: Colors.grey,fontSize: 16),),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.black,),),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey)),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('Date Format:',style: TextStyle(color: Colors.grey,fontSize: 16),),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.calendar_today,color: Colors.black,),),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey)),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('Time Zone:',style: TextStyle(color: Colors.grey,fontSize: 16),),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(onPressed: (){},icon:Icon(Icons.arrow_drop_down,color: Colors.black,)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey)),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('Default Language:',style: TextStyle(color: Colors.grey,fontSize: 16),),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.black,),),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey)),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('Currency Code:',style: TextStyle(color: Colors.grey,fontSize: 16),),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.black,),),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey)),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('Currency Symbol:',style: TextStyle(color: Colors.grey,fontSize: 16),),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.black,),),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey)),
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
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
                          "SAVE",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

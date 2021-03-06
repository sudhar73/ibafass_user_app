import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class Localization extends StatefulWidget {
  const Localization({Key? key}) : super(key: key);

  @override
  _LocalizationState createState() => _LocalizationState();
}

class _LocalizationState extends State<Localization> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.height;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: AppBar(
        backgroundColor: HexColor('#0F46B3'),
        title: Text('Localization', style: TextStyle(
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
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: mywidth,
            decoration: BoxDecoration(color: HexColor('#DCF4F9'),
                borderRadius: BorderRadius.only(topRight:Radius.circular(40.0),topLeft: Radius.circular(40.0))
            ),
            child: Column(
              children: [
                Container(
                  width: mywidth,
                  decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('Default Country :',style: TextStyle(color: Colors.grey,fontSize: 16),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
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
                          child: Text('Date format :',style: TextStyle(color: Colors.grey,fontSize: 16),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.calendar_today,color: Colors.black,),
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
                          child: Text('Time Zone :',style: TextStyle(color: Colors.grey,fontSize: 16),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
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
                          child: Text('Default Language :',style: TextStyle(color: Colors.grey,fontSize: 16),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
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
                          child: Text('Currency Code :',style: TextStyle(color: Colors.grey,fontSize: 16),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
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
                          child: Text('Currency Symbol :',style: TextStyle(color: Colors.grey,fontSize: 16),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
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
                      ])
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
      ),
    );
  }
}

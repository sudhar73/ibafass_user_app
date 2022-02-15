import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:hexcolor/hexcolor.dart';
class SalarySettings extends StatefulWidget {
  const SalarySettings({Key? key}) : super(key: key);

  @override
  _SalarySettingsState createState() => _SalarySettingsState();
}

class _SalarySettingsState extends State<SalarySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: AppBar(
        backgroundColor: HexColor('#0F46B3'),
        title: Text('Salary Setttings',style: TextStyle(
            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
            onPressed: (){
              onPressed(){
                Navigator.pop(context);
              }
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40.0),topLeft: Radius.circular(40.0))),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: HexColor('#DCF4F9'),
                          borderRadius: BorderRadius.all(Radius.circular(40.0))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text('DA&HRA Settings',style: TextStyle(color: Colors.black,fontSize: 17),),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: GFToggle(onChanged: (val){},
                                  value:true,
                                  enabledText: 'ON',
                                  disabledText: 'OFF',
                                  disabledTrackColor: Colors.grey,
                                  enabledTrackColor: Colors.green,
                                  type: GFToggleType.ios,
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                              indent: 20.0,
                              endIndent: 20.0,
                            ),
                          ),
                         Center(
                           child: Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.all(Radius.circular(20.0))),
                             height: 250,
                             width: MediaQuery.of(context).size.width/1.20,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 SizedBox(height: 20,),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20.0),
                                   child: Text('DA(%):',style: TextStyle(color: Colors.grey,fontSize: 16),),
                                 ),
                                 SizedBox(height: 10,),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                   child: TextFormField(
                                     decoration: InputDecoration(
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
                                   child: Text('HRA(%):',style: TextStyle(color: Colors.grey,fontSize: 16),),
                                 ),
                                 SizedBox(height: 10,),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                   child: TextFormField(
                                     decoration: InputDecoration(
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                           borderSide: BorderSide(color: Colors.grey)),
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                           borderSide: BorderSide(color: Colors.grey)),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text('PROVIDED FUND Settings',style: TextStyle(color: Colors.black,fontSize: 17),),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: GFToggle(onChanged: (val){},
                                  value:true,
                                  enabledText: 'ON',
                                  disabledText: 'OFF',
                                  disabledTrackColor: Colors.grey,
                                  enabledTrackColor: Colors.green,
                                  type: GFToggleType.ios,
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                              indent: 20.0,
                              endIndent: 20.0,
                            ),
                          ),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              height: 250,
                              width: MediaQuery.of(context).size.width/1.20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text('Employee Share(%):',style: TextStyle(color: Colors.grey,fontSize: 16),),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
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
                                    child: Text('Organization share(%):',style: TextStyle(color: Colors.grey,fontSize: 16),),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            borderSide: BorderSide(color: Colors.grey)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            borderSide: BorderSide(color: Colors.grey)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text('ESI Settings',style: TextStyle(color: Colors.black,fontSize: 17),),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: GFToggle(onChanged: (val){},
                                  value:true,
                                  enabledText: 'ON',
                                  disabledText: 'OFF',
                                  disabledTrackColor: Colors.grey,
                                  enabledTrackColor: Colors.green,
                                  type: GFToggleType.ios,
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                              indent: 20.0,
                              endIndent: 20.0,
                            ),
                          ),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              height: 250,
                              width: MediaQuery.of(context).size.width/1.20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text('Employee Share(%):',style: TextStyle(color: Colors.grey,fontSize: 16),),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
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
                                    child: Text('Organization Share(%):',style: TextStyle(color: Colors.grey,fontSize: 16),),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            borderSide: BorderSide(color: Colors.grey)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            borderSide: BorderSide(color: Colors.grey)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 30,),
                        ],
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
                          "Save",
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
}

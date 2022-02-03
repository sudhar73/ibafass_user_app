import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class EmployeeAttendance extends StatefulWidget {
  const EmployeeAttendance({Key? key}) : super(key: key);

  @override
  _EmployeeAttendanceState createState() => _EmployeeAttendanceState();
}

class _EmployeeAttendanceState extends State<EmployeeAttendance> {
  @override
  Widget build(BuildContext context) {
    double myheight=MediaQuery.of(context).size.height;
    double mywidth =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: HexColor('#0F46B3'),
        title: Text('Attendance',style: TextStyle(
            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: myheight/3.5 ,
              width: mywidth,
              color: HexColor('#0F46B3'),
              child:Column(
                children: [
                  Center(child: Text('28 October, 2019',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                ],
              ),
            ),
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  height: myheight,
                  width: mywidth,
                  decoration: BoxDecoration( color: HexColor('#DCF4F9'),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: myheight*0.3,),
                      Padding(
                        padding: EdgeInsets.only(left: mywidth*0.09),
                        child: Text('Employees',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Container(
                          height: 100,
                          width: mywidth/1.20,
                          decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          child: Center(
                            child: ListTile(
                              leading: CircleAvatar(
                              radius: 20,
                              child: ClipOval(
                                child: Image(
                                  image: AssetImage('assets/payment/profilepic.jpg'),
                                  fit: BoxFit.cover,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                              title: Text('Mani',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                              subtitle:Text('UI Designer',
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),),
                              trailing: Icon(Icons.more_vert,color: Colors.black,),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -myheight/5,left:mywidth*0.09,
                    child:  Center(
                      child: Container(
                        decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  height: myheight/2.2,
                  width: mywidth/1.20,
                ),
                    )),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/employees/attendance/employeeattendance.dart';
class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    final myheight=MediaQuery.of(context).size.height;
    final mywidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:HexColor('#0F46B3'),
     appBar: AppBar(
       elevation: 0.0,
       backgroundColor:HexColor('#0F46B3'),
       title: Text('Attendance',style: TextStyle(
           color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
       ),),
       centerTitle: true,
       leading: IconButton(
         onPressed: (){
           Navigator.pop(context);
         },
           icon: Icon(Icons.arrow_back)),
       actions: [
         IconButton(onPressed: (){
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => const EmployeeAttendance()),
           );
         }, icon: Icon(Icons.calendar_today,color: Colors.white,))
       ],
     ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5,),
            Container(
              height: myheight/5.8,
              width: mywidth,
              color: HexColor('#0F46B3'),
              child:Column(
                children: [
                  Center(child:
                  Text('28 October, 2019',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                  Text(('Today'),style: TextStyle(fontSize: 14,color: Colors.white),),
                ],
              ),
            ),
        Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              width: mywidth,
              decoration: BoxDecoration( color: HexColor('#DCF4F9'),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))),
              child: Column(
                children: [
                  SizedBox(height: myheight*0.18,),
                  Container(
                    height: myheight/2.5,
                    width: mywidth/1.20,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    child: Column(
                      children: [
                        Center(child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Total working hours :',style: TextStyle(fontWeight:FontWeight.bold,color: HexColor('#0F46B3'),fontSize: 20),),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height:myheight*0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Container(
                        height: myheight/8,
                        width: mywidth/3,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(25.0))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Break Time',style: TextStyle(color: Colors.black,fontSize: 16),),
                            Text('01.30 hrs',style: TextStyle(fontWeight:FontWeight.bold,color: HexColor('#0F46B3'),fontSize: 18),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: myheight/8,
                        width: mywidth/3,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(25.0))),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Over Time',style: TextStyle(color: Colors.black,fontSize: 16),),
                            Text('01.30 hrs',style: TextStyle(fontWeight:FontWeight.bold,color: HexColor('#0F46B3'),fontSize: 18),),

                          ],
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height:10)
                ],)

            ),
            Positioned(
                top:-myheight/10,left:mywidth*0.09,
                child: Container(
                  height: myheight/4.5,
                  width: mywidth/3,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Container(
                          height: 80,
                          width: 80,
                          color: HexColor('#DCF4F9'),
                          child: Image(
                            image: AssetImage('assets/attendancefingerprint.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10),
                      Text('Punch in',style: TextStyle(color: Colors.black,fontSize: 14),),
                      Text('10.00 A.M',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                )),
            Positioned(
              top:-myheight/10,right:mywidth*0.09,
              child: Container(
                height: myheight/4.5,
                width:mywidth/3,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(25.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        height: 80,
                        width: 80,
                        color: HexColor('#DCF4F9'),
                        child: Image(
                          image: AssetImage('assets/attendancefingerprint.png'),
                        ),
                      ),
                    ),
                    SizedBox(height:10),
                    Text('Punch out',style: TextStyle(color: Colors.blue,fontSize: 14),),
                    Text('6.00 P.M',style: TextStyle(color: HexColor('#0F46B3'), fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          ],
        )
     ] ),
      ) ,
    );
  }
}

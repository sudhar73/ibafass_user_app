import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class EmployeeAttendancePerformance extends StatefulWidget {
  const EmployeeAttendancePerformance({Key? key}) : super(key: key);

  @override
  _EmployeeAttendancePerformanceState createState() => _EmployeeAttendancePerformanceState();
}

class _EmployeeAttendancePerformanceState extends State<EmployeeAttendancePerformance> {
  @override
  Widget build(BuildContext context) {
    double myheight=MediaQuery.of(context).size.height;
    double mywidth =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:HexColor('#0F46B3'),
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
              height: myheight/4 ,
              width: mywidth,
              color: HexColor('#0F46B3'),
              child:Column(
                children: [
                  Center(child: Text('28 October, 2019',
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                ],
              ),
            ),
            Container(
              height: myheight,
              width: mywidth,
              decoration: BoxDecoration( color: HexColor('#DCF4F9'),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))),
              child:Column(
                children: [
                  SizedBox(height: 20.0,),
                  Container(
                    height: myheight/2.5,
                    width: mywidth/1.20,
                    decoration: BoxDecoration( color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Container(
                         decoration: BoxDecoration( color: HexColor('#0F46B3'),
                             borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))),
                         height: 70,
                         child:Row(
                           children: [
                             SizedBox(width: 20.0,),
                             CircleAvatar(
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
                             SizedBox(width: 20,),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Mani',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                                 Text('Ui Design',style:TextStyle(color: Colors.white,fontSize: 12),)
                               ],
                             )
                           ],
                         )
                       ),
                        SizedBox(height: 10.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('Total Activity',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                        SizedBox(height: 10,),
                        Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.circle_outlined,color: HexColor('#0F46B3'),size: 11,),
                            SizedBox(width: 10,),
                            Text('punch in at',style:TextStyle(color: Colors.grey,fontSize: 14),),
                            SizedBox(width: 20,),
                            Icon(Icons.timer,color: Colors.black,size: 20,),
                            SizedBox(width: 5,),
                            Text('10.00 A.M',style:TextStyle(color: Colors.black,fontSize: 14),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.circle_outlined,color: HexColor('#0F46B3'),size: 11,),
                            SizedBox(width: 10,),
                            Text('punch in at',style:TextStyle(color: Colors.grey,fontSize: 14),),
                            SizedBox(width: 20,),
                            Icon(Icons.timer,color: Colors.black,size: 20,),
                            SizedBox(width: 5,),
                            Text('10.00 A.M',style:TextStyle(color: Colors.black,fontSize: 14),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.circle_outlined,color: HexColor('#0F46B3'),size: 11,),
                            SizedBox(width: 10,),
                            Text('punch in at',style:TextStyle(color: Colors.grey,fontSize: 14),),
                            SizedBox(width: 20,),
                            Icon(Icons.timer,color: Colors.black,size: 20,),
                            SizedBox(width: 5,),
                            Text('10.00 A.M',style:TextStyle(color: Colors.black,fontSize: 14),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.circle_outlined,color: HexColor('#0F46B3'),size: 11,),
                            SizedBox(width: 10,),
                            Text('punch in at',style:TextStyle(color: Colors.grey,fontSize: 14),),
                            SizedBox(width: 20,),
                            Icon(Icons.timer,color: Colors.black,size: 20,),
                            SizedBox(width: 5,),
                            Text('10.00 A.M',style:TextStyle(color: Colors.black,fontSize: 14),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.circle_outlined,color: HexColor('#0F46B3'),size: 11,),
                            SizedBox(width: 10,),
                            Text('punch in at',style:TextStyle(color: Colors.grey,fontSize: 14),),
                            SizedBox(width: 20,),
                            Icon(Icons.timer,color: Colors.black,size: 20,),
                            SizedBox(width: 5,),
                            Text('10.00 A.M',style:TextStyle(color: Colors.black,fontSize: 14),),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: myheight/7,
                        width: mywidth/3,
                        decoration: BoxDecoration( color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Break time',style: TextStyle(fontSize: 16,color: Colors.black),),
                          Text('01.30 hrs',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color:HexColor('#0F46B3')),),
                        ],
                      ),
                      ),

                      SizedBox(width: 10.0,),
                      Container(
                        height: myheight/7,
                        width: mywidth/3,
                          decoration: BoxDecoration( color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('over time',style: TextStyle(fontSize: 16,color: Colors.black),),
                            Text('00.00 hrs',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color:HexColor('#0F46B3')),),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30.0,),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 1.15,
                    child: RaisedButton(
                      onPressed: () {

                      },
                      color: HexColor('#0F46B3'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0)),
                      child: Text(
                        "08.00.00 Hours",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

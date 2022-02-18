import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  var groupValue;
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
         backgroundColor: HexColor('#0F46B3'),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back,color: Colors.white,)),
          title: Text('Schedule',style: TextStyle(fontSize:20,color: Colors.white),),
          centerTitle: true,
          actions: [
            Icon(Icons.more_vert,color: Colors.white,),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Center(child: Text('My Schedule',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 70,
              width: mywidth/1.20,
              decoration: BoxDecoration(color:HexColor('#DCF4F9'),borderRadius: BorderRadius.all(Radius.circular(40.0))),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Project Name:',style: TextStyle(fontSize: 16,color: Colors.black),),
                  SizedBox(width: 5,),
                  Text('Webpage UI Design',style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color:HexColor('#FC5C36')),)
                ],
              )
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Start time:',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.black),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: LinearPercentIndicator(
              percent: 0.5,
              lineHeight: 20,
              progressColor: HexColor('#28B961'),
              linearStrokeCap: LinearStrokeCap.roundAll,
              backgroundColor: HexColor('#B5EAC9'),

            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 8.0),
                    child: Icon(Icons.circle,color: HexColor('#28B961'),size: 10,),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('09:30',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21),),
                      Text('Min Start Time',style: TextStyle(fontSize: 13,color: Colors.black),),
                    ],
                  )
                ],
              ),
              Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 8.0),
                    child: Icon(Icons.circle,color: HexColor('#B5EAC9'),size: 10,),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('09:30',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21),),
                      Text('Max Start Time',style: TextStyle(fontSize: 13,color: Colors.black),),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('End time:',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.black),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: LinearPercentIndicator(
              percent: 0.5,
              lineHeight: 20,
              progressColor: HexColor('E95C6F'),
              linearStrokeCap: LinearStrokeCap.roundAll,
              backgroundColor: HexColor('FFD7DC'),

            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 8.0),
                    child: Icon(Icons.circle,color: HexColor('E95C6F'),size: 10,),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('09:30',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21),),
                      Text('Min Start Time',style: TextStyle(fontSize: 13,color: Colors.black),),
                    ],
                  )
                ],
              ),
              Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 8.0),
                    child: Icon(Icons.circle,color: HexColor('FFD7DC'),size: 10,),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('09:30',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21),),
                      Text('Max End Time',style: TextStyle(fontSize: 13,color: Colors.black),),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Break time:',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.black),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: LinearPercentIndicator(
              percent: 0.5,
              lineHeight: 20,
              progressColor: HexColor('FC7859'),
              linearStrokeCap: LinearStrokeCap.roundAll,
              backgroundColor: HexColor('FED8D0'),

            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 8.0),
                    child: Icon(Icons.circle,color: HexColor('FC7859'),size: 10,),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('09:30',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21),),
                      Text('Min Break Time',style: TextStyle(fontSize: 13,color: Colors.black),),
                    ],
                  )
                ],
              ),
              Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 8.0),
                    child: Icon(Icons.circle,color: HexColor('FED8D0'),size: 10,),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('09:30',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21),),
                      Text('Max Break Time',style: TextStyle(fontSize: 13,color: Colors.black),),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Status:',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.black),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: <Widget>[
                Radio(
                    activeColor: Colors.green,
                    value: "Complete",
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        this.groupValue = value;
                      });
                    }),
                Text(
                  'Complete',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 30,
                ),
                Radio(
                    activeColor: Colors.red,
                    value: "Pending",
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        this.groupValue = value;
                      });
                    }),
                Text(
                  'Pending',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

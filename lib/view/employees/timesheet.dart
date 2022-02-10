import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';

class TimeSheet extends StatefulWidget {
  const TimeSheet({Key? key}) : super(key: key);

  @override
  _TimeSheetState createState() => _TimeSheetState();
}

class _TimeSheetState extends State<TimeSheet> {
  late DateTime _selectedDate;

  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(Duration(days: 5));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            elevation: 0.0,
            centerTitle:true,
            backgroundColor: HexColor('#0F46B3'),
            title: Text('TimeSheet',style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold),),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){},
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                ),
                onPressed: (){},
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height /10,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Center(
                  child: Text(
                    'Time sheet Details',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: HexColor('#DCF4F9'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                height: MediaQuery.of(context).size.height ,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.topRight,
                      child:   Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(

                          height: 50,

                          width: MediaQuery.of(context).size.width/3.8,
                          child: RaisedButton(
                            onPressed: () {

                            },
                            color: HexColor('#FF5F41'),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(

                              children: [
                                Icon(Icons.add,color: Colors.white,),
                                Text(
                                  " Add ",
                                  style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15, color: Colors.white),
                                ),

                              ],
                            ),

                          ),


                        ),
                      ),
                    ),

                    CalendarWeek(
                      height: 100,
                      minDate: DateTime.now().add(
                        Duration(days: -365),
                      ),
                      maxDate: DateTime.now().add(
                        Duration(days: 365),
                      ),
                      onDatePressed: (DateTime datetime) {
                        setState(() {
                          _selectedDate = datetime;
                        });
                      },
                      onDateLongPressed: (DateTime datetime) {
                        setState(() {
                          _selectedDate = datetime;
                        });
                      },
                      dayOfWeekStyle:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      //dayOfWeekAlignment: FractionalOffset.bottomCenter,
                      dateStyle:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                      //dateAlignment: FractionalOffset.topCenter,
                      todayDateStyle:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                      todayBackgroundColor: Colors.black.withOpacity(0.15),
                      pressedDateBackgroundColor: Colors.blueAccent,
                      pressedDateStyle:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                      dateBackgroundColor: Colors.transparent,
                      backgroundColor: HexColor('#DCF4F9') ,
                      dayOfWeek: ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'],
                      // spaceBetweenLabelAndDate: 0,
                      //  dayShapeBorder: CircleBorder(),
                      decorations: [
                        DecorationItem(
                            decorationAlignment: FractionalOffset.bottomRight,
                            date: DateTime.now(),
                            decoration: Icon(
                              Icons.today,
                              color: Colors.orange,
                            )),

                      ],
                    ),
                     SizedBox(height: 20,),
                     Container(
                       height: MediaQuery.of(context).size.height/3,
                       width: MediaQuery.of(context).size.width/1.10,
                       decoration: BoxDecoration(color: Colors.white,
                           borderRadius: BorderRadius.all(Radius.circular(20.0))),
                       child: Column(
                  children: [
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                              AssetImage('assets/directory/profilepicture.jpg')),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,),
                              Text('Balaji',style: TextStyle(color: HexColor('FF4928'),fontWeight:FontWeight.bold,fontSize: 20),),
                              SizedBox(height: 5,),
                              Text('UI Designer',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),

                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Icon(Icons.more_vert,color: Colors.black,),
                          )
                        ],
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.0,
                        ),
                    ),
                    Row(
                        children: [
                          SizedBox(width: 20,),
                          Container(
                            height: 50,
                            width: 4,
                            color: HexColor('FF4928'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('New web page Ui design Project',style:
                              TextStyle(color: HexColor('FF4928'),fontWeight: FontWeight.bold,fontSize: 18),),
                              SizedBox(height: 5,),
                              Text(
                                "UI design for \$100",style: TextStyle(color: Colors.grey,fontSize: 12,),
                              )
                            ],
                          )
                        ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(Icons.timer,color: Colors.black,size: 20,),
                          SizedBox(width: 5,),
                          Text('10 A.M-5 P.M',style: TextStyle(
                              color: HexColor('FF4928'),fontSize: 12,fontWeight: FontWeight.bold),),
                          SizedBox(width: 30,),
                          Icon(Icons.person,color: Colors.black,size: 20,),
                          SizedBox(width: 5,),
                          Text('2Persons',style:
                          TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)
                        ],
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
                     ),
                    SizedBox(height: 20,),
                    Container(
                      height: MediaQuery.of(context).size.height/3,
                      width: MediaQuery.of(context).size.width/1.10,
                      decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
                                child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                    AssetImage('assets/directory/profilepicture.jpg')),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20,),
                                  Text('Balaji',style: TextStyle(color: HexColor('12A73E'),
                                      fontWeight:FontWeight.bold,fontSize: 20),),
                                  SizedBox(height: 5,),
                                  Text('UI Dsigner',style: TextStyle(
                                      color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),

                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Icon(Icons.more_vert,color: Colors.black,),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Container(
                                height: 50,
                                width: 4,
                                color: HexColor('12A73E'),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('New web page Ui design Project',style:
                                  TextStyle(color: HexColor('12A73E'),fontWeight: FontWeight.bold,fontSize: 18),),
                                  SizedBox(height: 5,),
                                  Text(
                                    "UI design for \$100",style: TextStyle(color: Colors.grey,fontSize: 12,),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Icon(Icons.timer,color: Colors.black,size: 20,),
                              SizedBox(width: 5,),
                              Text('10 A.M-5 P.M',style:
                              TextStyle(color: HexColor('12A73E'),fontSize: 12,fontWeight: FontWeight.bold),),
                              SizedBox(width: 30,),
                              Icon(Icons.person,color: Colors.black,size: 20,),
                              SizedBox(width: 5,),
                              Text('2Persons',style:
                              TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)

                            ],
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        )
    );
  }
}

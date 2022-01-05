
import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:hexcolor/hexcolor.dart';


class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(Duration(days: 5));
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor:HexColor('#DCF4F9') ,
        appBar: PreferredSize(
         preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            centerTitle:true,
            backgroundColor: HexColor('#0F46B3'),
            title: Text('Tasks',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
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
        body: Column
          (
          children: [

            Container(
               height: 70,
               width: MediaQuery.of(context).size.width,
               color: Colors.white,
              child: Center(child: Text('My Tasks',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),)),
            ),
            SizedBox(height: 10,),


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
          pressedDateBackgroundColor: Colors.orange,
          pressedDateStyle:
          TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
          dateBackgroundColor: Colors.transparent,
          backgroundColor: HexColor('#DCF4F9') ,
          dayOfWeek: ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'],
         // spaceBetweenLabelAndDate: 0,
          dayShapeBorder: CircleBorder(),
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












],
        ),
      ),
    );
  }
}



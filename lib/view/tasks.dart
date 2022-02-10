
import 'package:flutter/cupertino.dart';
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
         preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            elevation: 0.0,
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
        body: SingleChildScrollView(
          child: Column
            (
            children: [
              Container(
                 height: 70,
                 width: MediaQuery.of(context).size.width,
                 color: Colors.white,
                child: Center(child: Text('My Tasks',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),)),
              ),
              SizedBox(height: 10,),
Align(
  alignment: Alignment.topRight,
  child:   Padding(
    padding: const EdgeInsets.only(right: 20.0),
    child: Container(

      height: 50,

      width: MediaQuery.of(context).size.width/2.9,
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
              " Add Task",
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
SizedBox(
  height: 10,
),
Padding(
  padding: const EdgeInsets.only(left: 20.0,top:10.0,right: 20.0),
  child:   Container(
    height:500,width:MediaQuery.of(context).size.width,color:Colors.green,
    child:   Scaffold(
  backgroundColor: HexColor('#DCF4F9'),
      appBar:   PreferredSize(
        
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35.0))),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: TabBar(
            indicator: UnderlineTabIndicator( borderSide: BorderSide(color:Colors.white,width: 3.0),
              insets: EdgeInsets.only(left: 15,right: 15)
            ),
               tabs: [
                 Tab(child:
                 Center(child: Text('Pending',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13,color: HexColor('#FA2634')),)),),
                 Tab(child: Text('Completed',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13,color: HexColor('#2B9D2F')),),),
                 Tab(child: Text('Progress',style: TextStyle(fontWeight:FontWeight.bold,fontSize:13,color: HexColor('#0F46B3')),),)
               ],
          ),
        ),
      ),
      body:Center(child: Container(
        decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(30.0))),
        height:MediaQuery.of(context).size.height/1.9                                                                                                                                                                                             ,width:MediaQuery.of(context).size.width/1.10,
        child: TabBarView(
          children: [
            Pending(),
            Completed(),
            Progress(),
          ],
        ),
      ))
    ),
  ),
)
],
          ),
        ),
      ),
    );
  }
  Pending(){
return Column(
children: [
  Container(
    decoration: BoxDecoration(color: HexColor('#FA2634'),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))),
    height: 60,
    width: MediaQuery.of(context).size.width/1.10,
  child: Row(
    children: [
      SizedBox(width: 20),
      Text('Pending Task',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
      Spacer(),
      IconButton(
       onPressed:  (){},
        icon: Icon(Icons.more_vert,color: Colors.white,),
      )
    ],
  ),
  ),
  Row(

    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
        child: CircleAvatar(
          radius: 30,
          child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),

          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Text('Arun',style: TextStyle(color: HexColor('#FA2634'),fontWeight:FontWeight.bold,fontSize: 22),),
          SizedBox(height: 5,),
          Text('Flutter Developer',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),),

        ],
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Icon(Icons.arrow_drop_down,color: Colors.black,),
      )
    ],
  ),
  Padding(
    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
    child: Divider(
      color: Colors.grey,
      thickness: 1,
    ),
  ),
  SizedBox(height: 5,),
  Row(
    children: [
      SizedBox(width: 20,),
      Container(
        height: 60,
        width: 5,
        color: HexColor('#FA2634'),
      ),
      SizedBox(width: 10,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('New web page Ui design Project',style: TextStyle(color: HexColor('#FA2634'),fontWeight: FontWeight.bold,fontSize: 16),),
         SizedBox(height: 5,),
          Text(
           "UI design for \$100",style: TextStyle(color: Colors.grey,fontSize: 16,),
          )
        ],
      )
    ],
  ),
  SizedBox(height: 10,),
  Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          width:MediaQuery.of(context).size.width/1.6,
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey.withOpacity(0.3),
            minHeight: 5,
            value: 0.5,
            color:HexColor('#FA2634') ,

          ),
        ),
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Text('30%',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 18),),
      ),
    ],
  ),
  SizedBox(height: 10),
  Row(
    children: [
      SizedBox(width: 20,),
      Icon(Icons.timer,color: Colors.black,size: 30,),
      SizedBox(width: 10,),
      Text('10 A.M-5 P.M',style: TextStyle(color: HexColor('#FA2634'),fontSize: 20,fontWeight: FontWeight.bold),)
    ],
  ),
  SizedBox(height: 10,),

  Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(

        decoration: BoxDecoration(
            color: HexColor('#FA2634').withOpacity(0.3),borderRadius: BorderRadius.all(Radius.circular(5.0))),
        height: 25,
        width: 60,
        child: Center(child: Text('Low',style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,color: HexColor('#FA2634')),)),


      ),
    ),
  )
  ],
);
  }
  Completed(){
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: HexColor('#2B9D2F'),borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))),
          height: 60,
          width: MediaQuery.of(context).size.width/1.10,
          child: Row(
            children: [
              SizedBox(width: 20),
              Text('Completed Task',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              Spacer(),
              IconButton(
                onPressed:  (){},
                icon: Icon(Icons.more_vert,color: Colors.white,),
              )
            ],
          ),
        ),
        Row(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
              child: CircleAvatar(
                radius: 30,
                child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),

                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text('Arun',style: TextStyle(color: HexColor('#2B9D2F'),fontWeight:FontWeight.bold,fontSize: 22),),
                SizedBox(height: 5,),
                Text('Flutter Developer',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),),

              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.arrow_drop_down,color: Colors.black,),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        SizedBox(height: 5,),
        Row(
          children: [
            SizedBox(width: 20,),
            Container(
              height: 60,
              width: 5,
              color: HexColor('#2B9D2F'),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('New web page Ui design Project',style: TextStyle(color: HexColor('#2B9D2F'),fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(height: 5,),
                Text(
                  "UI design for \$100",style: TextStyle(color: Colors.grey,fontSize: 16,),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width:MediaQuery.of(context).size.width/1.6,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  minHeight: 5,
                  value: 0.5,
                  color:HexColor('#2B9D2F') ,

                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text('30%',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 18),),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 20,),
            Icon(Icons.timer,color: Colors.black,size: 30,),
            SizedBox(width: 10,),
            Text('10 A.M-5 P.M',style: TextStyle(color: HexColor('#2B9D2F'),fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(height: 10,),

        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(

              decoration: BoxDecoration(
                  color: HexColor('#2B9D2F').withOpacity(0.3),borderRadius: BorderRadius.all(Radius.circular(5.0))),
              height: 25,
              width: 60,
              child: Center(child: Text('Low',style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,color: HexColor('#2B9D2F')),)),


            ),
          ),
        )
      ],
    );
  }
  Progress(){
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: HexColor('#0F46B3'),borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))),
          height: 60,
          width: MediaQuery.of(context).size.width/1.10,
          child: Row(
            children: [
              SizedBox(width: 20),
              Text('Progress Task',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              Spacer(),
              IconButton(
                onPressed:  (){},
                icon: Icon(Icons.more_vert,color: Colors.white,),
              )
            ],
          ),
        ),
        Row(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
              child: CircleAvatar(
                radius: 30,
                child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),

                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text('Arun',style: TextStyle(color: HexColor('#0F46B3'),fontWeight:FontWeight.bold,fontSize: 22),),
                SizedBox(height: 5,),
                Text('Flutter Developer',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),),

              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.arrow_drop_down,color: Colors.black,),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        SizedBox(height: 5,),
        Row(
          children: [
            SizedBox(width: 20,),
            Container(
              height: 60,
              width: 5,
              color: HexColor('#0F46B3'),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('New web page Ui design Project',style: TextStyle(color: HexColor('#0F46B3'),fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(height: 5,),
                Text(
                  "UI design for \$100",style: TextStyle(color: Colors.grey,fontSize: 16,),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width:MediaQuery.of(context).size.width/1.6,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  minHeight: 5,
                  value: 0.5,
                  color:HexColor('#0F46B3') ,

                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text('30%',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 18),),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 20,),
            Icon(Icons.timer,color: Colors.black,size: 30,),
            SizedBox(width: 10,),
            Text('10 A.M-5 P.M',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,),)
          ],
        ),
        SizedBox(height: 10,),

        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(

              decoration: BoxDecoration(
                  color: HexColor('#0F46B3').withOpacity(0.3),borderRadius: BorderRadius.all(Radius.circular(5.0))),
              height: 25,
              width: 60,
              child: Center(child: Text('Med',style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,color: HexColor('#0F46B3')),)),


            ),
          ),
        )
      ],
    );
  }
}



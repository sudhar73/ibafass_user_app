import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/employees/holiday.dart';
import 'package:ibafass/view/notification/notificationall.dart';
import 'package:ibafass/view/payment/payment.dart';
import 'package:ibafass/view/settings/companysettings.dart';

class LeaveStatus extends StatefulWidget {
  const LeaveStatus({Key? key}) : super(key: key);

  @override
  _LeaveStatusState createState() => _LeaveStatusState();
}

class _LeaveStatusState extends State<LeaveStatus>with TickerProviderStateMixin  {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = new TabController(length: 3, vsync: this);
    final myheight=MediaQuery.of(context).size.height;
    final mywidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle:true,
        backgroundColor: HexColor('#0F46B3'),
        title: Text('Leaves',style: TextStyle(color: Colors.white,
            fontSize: 20,fontWeight: FontWeight.bold),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
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
      body: Column(
        children: [
          Container(
            color: HexColor('#0F46B3'),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/payment/profilepic.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Mani',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'UI Designer',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  )),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 15,bottom: 10),
                    child: DefaultTabController(
                      length: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,3),
                              blurRadius: 6,
                              color: Colors.grey,
                            )
                          ],
                          borderRadius:BorderRadius.all(Radius.circular(30)),
                        ),
                        height: myheight/11,
                        width: mywidth/1.10,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TabBar(
                            controller: _tabcontroller,
                            unselectedLabelColor: Colors.black,
                            labelColor: Colors.white,
                            indicator: BoxDecoration(
                                shape: BoxShape.circle,
                                color: HexColor('#0F46B3')),
                            tabs: [
                              Tab( child: Center(
                                child: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              )),
                              Tab(child: Center(
                                child: Icon(
                                  Icons.school,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),),
                              Tab( child: Center(
                                child: Icon(
                                  Icons.note_add,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: DefaultTabController(
                      length: 3,
                      child: Container(
                       color: Colors.red,

                        height: myheight/2 ,
                        child: TabBarView( controller: _tabcontroller,
                            children:[
                              Pending(),
                              Approved(),
                              Rejected(),
                            ]
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    ],
      ),
    );
  }

  Pending() {
    return Column(
      children: [
        SizedBox(height: 10,),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Pending',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        Divider(
          endIndent: MediaQuery.of(context).size.width / 1.35,
          thickness: 2,
          color: HexColor('#FA8226'),
        ),

        Row(
          children: [
            Text(
              'Leave Plan    :',
              style: TextStyle(
                  color: HexColor('#7B7E94'),
                  fontSize: 15,
                  ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2.10,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#FA8226")),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#FA8226")),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Approval by  :',
              style: TextStyle(
                  color: HexColor('#7B7E94'),
                  fontSize: 15,
                  ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2.10,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#FA8226")),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#FA8226")),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  child: Text(
                    'Reason for Pending    ',
                    style: TextStyle(
                        color: HexColor('#7B7E94'),
                        fontSize: 15,
                        ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  ':',
                  style: TextStyle(
                    color: HexColor('#7B7E94'),
                    fontSize: 15,

                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              //height: 150,
              width: MediaQuery.of(context).size.width / 2.10,
              // color: Colors.purpleAccent,
              child: TextField(
                maxLines: 2,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#FA8226")),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#FA8226")),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          elevation: 6,
          shadowColor: HexColor('#FA8226'),
          color: HexColor('#FA8226'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40))),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.20,
            child: RaisedButton(
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>Payment(), ),
                 );
              },
              color: HexColor('#FA8226'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Text(
                "CANCEL LEAVE REQUEST",
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
  Approved() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Approved',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        Divider(
          endIndent: MediaQuery.of(context).size.width / 1.35,
          thickness: 2,
          color: HexColor('#48A938'),
        ),

        Row(
          children: [
            Text(
              'Leave Plan    :',
              style: TextStyle(
                  color: HexColor('#7B7E94'),
                  fontSize: 15,
                  ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#48A938")),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#48A938")),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Approval by  :',
              style: TextStyle(
                  color: HexColor('#7B7E94'),
                  fontSize: 15,
                  ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#48A938")),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#48A938")),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Card(
          elevation: 6,
          shadowColor: HexColor('#48A938'),
          color: HexColor('#48A938'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40))),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.20,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationAll()),
                );
              },
              color: HexColor('#48A938'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Text(
                "CANCEL LEAVE REQUEST",
                style: TextStyle(fontSize: 14, fontWeight:FontWeight.bold,color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Rejected() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Rejected',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Divider(
          endIndent: MediaQuery.of(context).size.width / 1.35,
          thickness: 2,
          color: HexColor('#FF2626'),
        ),

        Row(
          children: [
            Text(
              'Leave Plan    :',
              style: TextStyle(
                  color: HexColor('#7B7E94'),
                  fontSize: 15,
                  ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#FF2626")),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#FF2626")),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Approval by  :',
              style: TextStyle(
                  color: HexColor('#7B7E94'),
                  fontSize: 15,
                  ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#FF2626")),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#FF2626")),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  child: Text(
                    'Reason for Rejected    ',
                    style: TextStyle(
                        color: HexColor('#7B7E94'),
                        fontSize: 15,
                        ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  ':',
                  style: TextStyle(
                    color: HexColor('#7B7E94'),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              //height: 150,
              width: MediaQuery.of(context).size.width / 2,
              // color: Colors.purpleAccent,
              child: TextField(
                maxLines: 2,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#FF2626")),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#FF2626")),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          elevation: 6,
          shadowColor: HexColor('#FF7575'),
          color: HexColor('#FF2626'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40))),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.20,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Holiday()),
                );
              },
              color: HexColor('#FF2626'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Text(
                "CANCEL LEAVE REQUEST",
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

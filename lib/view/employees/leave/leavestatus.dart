import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/employees/holiday.dart';
import 'package:ibafass/view/notification/notificationall.dart';
import 'package:ibafass/view/payment/payment.dart';

class LeaveStatus extends StatefulWidget {
  const LeaveStatus({Key? key}) : super(key: key);

  @override
  _LeaveStatusState createState() => _LeaveStatusState();
}

class _LeaveStatusState extends State<LeaveStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: HexColor('#0F46B3'),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Icon(
                              Icons.arrow_back_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Center(
                            child: Text(
                              'Leaves',
                              style: TextStyle(
                                  fontSize: 22,

                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 45,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/payment/profilepic.jpg'),
                        fit: BoxFit.cover,
                        height: 90,
                        width: 90,
                      ),
                    ),
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
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      )),
                  height: MediaQuery.of(context).size.height / 1.60,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: DefaultTabController(
                      length: 3,
                      child: Scaffold(
                        backgroundColor: Colors.white,
                        appBar: AppBar(
                          automaticallyImplyLeading: false,
                          toolbarHeight: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          backgroundColor: Colors.white,
                          title: TabBar(
                            indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                  width: 3.0, color: HexColor('#FA8226')),
                              insets: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10),
                            ),
                            tabs: [
                              Tab(
                                child: Text(
                                  'Pending',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                              Tab(
                                  child: Text(
                                'Approved',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              )),
                              Tab(
                                  child: Text(
                                'Rejected',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              )),
                            ],
                          ),
                        ),
                        body: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                height: 400,
                                width: MediaQuery.of(context).size.width / 0.90,
                                child: TabBarView(
                                  children: [
                                    Pending(),
                                    Approved(),
                                    Rejected(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Pending() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Pending',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        Divider(
          endIndent: MediaQuery.of(context).size.width / 1.35,
          thickness: 3,
          color: HexColor('#FA8226'),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Leave Plan    :',
              style: TextStyle(
                  color: HexColor('#7B7E94'),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
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
                  fontWeight: FontWeight.bold),
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
                        fontWeight: FontWeight.bold),
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
            height: 60,
            width: MediaQuery.of(context).size.width / 1.30,
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
                style: TextStyle(fontSize: 20, color: Colors.white),
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
          height: 20,
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
          thickness: 3,
          color: HexColor('#48A938'),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Leave Plan    :',
              style: TextStyle(
                  color: HexColor('#7B7E94'),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
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
                  fontWeight: FontWeight.bold),
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
          height: 20,
        ),
        Card(
          elevation: 6,
          shadowColor: HexColor('#48A938'),
          color: HexColor('#48A938'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40))),
          child: Container(
            height: 60,
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
                style: TextStyle(fontSize: 20, color: Colors.white),
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
          height: 20,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Pending',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        Divider(
          endIndent: MediaQuery.of(context).size.width / 1.35,
          thickness: 3,
          color: HexColor('#FF2626'),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Leave Plan    :',
              style: TextStyle(
                  color: HexColor('#7B7E94'),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
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
                  fontWeight: FontWeight.bold),
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
                    'Reason for Pending    ',
                    style: TextStyle(
                        color: HexColor('#7B7E94'),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
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
            height: 60,
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
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

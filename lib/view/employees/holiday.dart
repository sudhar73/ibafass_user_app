import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/employees/departments.dart';

class Holiday extends StatefulWidget {
  const Holiday({Key? key}) : super(key: key);

  @override
  _HolidayState createState() => _HolidayState();
}

class _HolidayState extends State<Holiday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          centerTitle: true,
          backgroundColor: HexColor('#0F46B3'),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
          title: Text('Holidays',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
          actions: [
            Icon(Icons.more_vert,)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Text(
                      'Holidays',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      '2021',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: HexColor('#0F46B3')),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Icon(
                        Icons.arrow_drop_down,
                        size: 32,
                      ),
                    )),
                Spacer(),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 15),
                    child: Image(
                      image: AssetImage(
                          'assets/holidays/calendar celebration icon.png'),
                      height: 25,
                      width: 25,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  color: HexColor('#DCF4F9'),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Center(
                    child:Container(decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),

                      height: 60,
                      width: MediaQuery.of(context).size.width/1.15,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Search for..',

                              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              suffixIcon: Container(
                                decoration: BoxDecoration( color: HexColor('E2E5FC'),
                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                                height: 5,
                                width: 5,
                                child: IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.search,color: Colors.black,)
                                ),
                              )
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      width: MediaQuery.of(context).size.width/1.15,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  'Today',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  'Mark as read',
                                  style: TextStyle(
                                      fontSize: 16, color: HexColor('#06A143')),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor('#F5FFF8'),
                                borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color: HexColor('#03B644').withOpacity(0.3),
                                    offset: Offset(
                                        0, 3.0), // shadow direction: bottom
                                    blurRadius: 1,
                                  )
                                ]),
                            height: 90,
                            width: MediaQuery.of(context).size.width / 1.30,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Image(
                                  image:
                                  AssetImage('assets/holidays/newyear.png'),
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'New Year',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '01 Jan 2021',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor('#4CD080')),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: HexColor('#CBF3DA'),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    height: 30,
                                    width: 60,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Sunday',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: HexColor('#06A143'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  'Upcoming Holidays',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  'See all',
                                  style: TextStyle(
                                      fontSize: 16, color: HexColor('#06A143')),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor('#FFF2E4'),
                                borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color: HexColor('#FFAE58').withOpacity(0.3),
                                    offset: Offset(
                                        0, 2.0), // shadow direction: bottom
                                    blurRadius: 1,
                                  )
                                ]),
                            height: 90,
                            width: MediaQuery.of(context).size.width / 1.30,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Image(
                                  image: AssetImage('assets/holidays/ramzan.png'),
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ramzan',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '05 Mar 2021',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor('#FF8F14')),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: HexColor('#FFD7AB'),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    height: 30,
                                    width: 60,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Tuesday',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: HexColor('#BD6302'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor('#FFE9FE'),
                                borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color: HexColor('#FA91F6').withOpacity(0.3),
                                    offset: Offset(
                                        0, 2.0), // shadow direction: bottom
                                    blurRadius: 1,
                                  )
                                ]),
                            height: 90,
                            width: MediaQuery.of(context).size.width / 1.30,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Image(
                                  image:
                                  AssetImage('assets/holidays/christmas.png'),
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Christmas',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '12 May 2021',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor('#9706A1')),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: HexColor('#FFAFFD'),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    height: 30,
                                    width: 60,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Friday',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: HexColor('#9706A1'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )  ],
            ),
      ),

    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Holiday extends StatefulWidget {
  const Holiday({Key? key}) : super(key: key);

  @override
  _HolidayState createState() => _HolidayState();
}

class _HolidayState extends State<Holiday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: HexColor('#0F46B3'),
            child: Column(children: [
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
                          'Holidays',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
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
            ]),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.15,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Text(
                        'Holidays',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        '2021',
                        style: TextStyle(
                            fontSize: 24,
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
                      padding: const EdgeInsets.only(top: 20, right: 10),
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
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: HexColor('#DCF4F9'),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              height: MediaQuery.of(context).size.height / 1.30,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.15,
                    child: Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: HexColor('#F1F3FE'),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 10,
                            child: Icon(
                              Icons.search,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                    height: MediaQuery.of(context).size.height / 1.65,
                    width: MediaQuery.of(context).size.width / 1.15,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
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
                                  color: HexColor('#03B644'),
                                  offset: Offset(
                                      0, 1.0), // shadow direction: bottom
                                  blurRadius: 6.0,
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
                                  color: HexColor('#FFAE58'),
                                  offset: Offset(
                                      0, 1.0), // shadow direction: bottom
                                  blurRadius: 6.0,
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
                                  color: HexColor('#FA91F6'),
                                  offset: Offset(
                                      0, 1.0), // shadow direction: bottom
                                  blurRadius: 6.0,
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
                      ],
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
}

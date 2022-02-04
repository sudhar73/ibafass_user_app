import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Kpi extends StatefulWidget {
  const Kpi({Key? key}) : super(key: key);
  @override
  KpiState createState() => KpiState();
}

class KpiState extends State<Kpi> {
  @override
  Widget build(BuildContext context) {
    final myHeight = MediaQuery.of(context).size.height;
    final myWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: HexColor('0F46B3'),
          elevation: 0.0,
          leading: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.white,
          ),
          title: Text(
            'KPI',
            style: TextStyle(
                fontSize: 16.6,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.more_vert,
              size: 20,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: myHeight / 4,
                  width: myWidth,
                  decoration: BoxDecoration(
                      color: HexColor('0F46B3'),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ]),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Text(
                                'Monthly Scoring',
                                style: TextStyle(
                                    fontSize: 16.6,
                                    color: HexColor('5FB562'),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 10),
                              child: Text(
                                '80%',
                                style: TextStyle(
                                    fontSize: 16.6,
                                    color: HexColor('5FB562'),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width - 50,
                            animation: true,
                            animationDuration: 1000,
                            lineHeight: 10.0,
                            percent: 0.8,
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: HexColor('5FB562'),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 590,
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ]),
                    child: Column(
                      children: <Widget>[
                        new ListTile(
                          title: Text(
                            'Reporting duty on time',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            '80%',
                            style: TextStyle(
                                fontSize: 16.6,
                                color: HexColor('5FB562'),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        new ListTile(
                          title: Text(
                            'Implementation of cleaning schedule > 70%',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            '60%',
                            style: TextStyle(
                                fontSize: 16.6,
                                color: HexColor('FF5F40'),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        new ListTile(
                          title: Text(
                            'Implementation of check lists > 70%',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            '80%',
                            style: TextStyle(
                                fontSize: 16.6,
                                color: HexColor('5FB562'),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        new ListTile(
                          title: Text(
                            'Training hours(20 mins/ trg.20 staff per week)',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            '80%',
                            style: TextStyle(
                                fontSize: 16.6,
                                color: HexColor('5FB562'),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        new ListTile(
                          title: Text(
                            'Staff duty rota availability > 90%',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            '80%',
                            style: TextStyle(
                                fontSize: 16.6,
                                color: HexColor('FF5F40'),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        new ListTile(
                          title: Text(
                            'Staff grooming standard > 87%',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            '80%',
                            style: TextStyle(
                                fontSize: 16.6,
                                color: HexColor('FF5F40'),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        new ListTile(
                          title: Text(
                            'Executive site visit',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            '80%',
                            style: TextStyle(
                                fontSize: 16.6,
                                color: HexColor('5FB562'),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        new ListTile(
                          title: Text(
                            'Operations meeting',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            '80%',
                            style: TextStyle(
                                fontSize: 16.6,
                                color: HexColor('5FB562'),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        new ListTile(
                          title: Text(
                            'Projects vacancy filling 85% and above',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            '80%',
                            style: TextStyle(
                                fontSize: 16.6,
                                color: HexColor('FF5F40'),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        new ListTile(
                          title: Text(
                            'Projects vacancy filling 85% and above',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            '90%',
                            style: TextStyle(
                                fontSize: 16.6,
                                color: HexColor('5FB562'),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        new ListTile(
                          title: Text(
                            'Staff attendance daily update',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            '80%',
                            style: TextStyle(
                                fontSize: 16.6,
                                color: HexColor('5FB562'),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        new ListTile(
                          title: Text(
                            'Reporting duty on time',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            '80%',
                            style: TextStyle(
                                fontSize: 16.6,
                                color: HexColor('5FB562'),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    'Performance',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10),
                  child: Text(
                    'Month',
                    style: TextStyle(
                        fontSize: 16.6,
                        color: HexColor('FF5F40'),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10),
                  child: const Icon(
                    Icons.arrow_drop_down,
                    size: 20,
                    color: Colors.black,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

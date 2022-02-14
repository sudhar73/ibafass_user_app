import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    final myheight = MediaQuery.of(context).size.height;
    final mywidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      backgroundColor: HexColor('F0F4FD'),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,

              child: Column(
                children: [
                  SizedBox(height:myheight/19 ,),
                  Row(
                    children: [

                                Padding(
            padding: const EdgeInsets.only(top: 10,left: 20),
        child: Text(
          'Dashboard',
          style: TextStyle(
                  fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
        Spacer(),

        Padding(
          padding: const EdgeInsets.only(right: 20,top: 10),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/dashboard/profilepic.jpg',),
          ),
        ),
      ]
                  ),
                  SizedBox(height: 10,),
                ],
                              ),
            ),
            Container(
              height: myheight/2.7,
              width: mywidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(
                        touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex =
                            pieTouchResponse.touchedSection!.touchedSectionIndex;
                      });
                    }),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 40,
                    sections: getSections(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width/1.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor('F2F1FF'),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage('assets/dashboard/clients.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Center(
                        child: Text(
                          'Clients',
                          style: TextStyle(
                              fontSize: 16.6,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      Center(
                        child: Text(
                          '100',
                          style: TextStyle(
                              fontSize: 16.6,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 30,
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width/1.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor('E1FFFE'),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage(
                                'assets/dashboard/projects.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Center(
                        child: Text(
                          'Projects',
                          style: TextStyle(
                              fontSize: 16.6,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      Center(
                        child: Text(
                          '250',
                          style: TextStyle(
                              fontSize: 16.6,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 30,
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width/1.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor('E9F9F5'),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage(
                                'assets/dashboard/employees.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Center(
                        child: Text(
                          'Employees',
                          style: TextStyle(
                              fontSize: 16.6,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      Center(
                        child: Text(
                          '130',
                          style: TextStyle(
                              fontSize: 16.6,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 30,
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width/1.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor('FEEEEC'),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage(
                                'assets/dashboard/invoices.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Center(
                        child: Text(
                          'Invoices',
                          style: TextStyle(
                              fontSize: 16.6,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      Center(
                        child: Text(
                          '70',
                          style: TextStyle(
                              fontSize: 16.6,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> getSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 80.0 : 70.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: HexColor('5A55CA'),
            value: 30,
            title: '100',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          );

        case 1:
          return PieChartSectionData(
            color: HexColor('2CC09C'),
            value: 30,
            title: '130',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          );
        case 2:
          return PieChartSectionData(
            color: HexColor('76CEF3'),
            value: 50,
            title: '250',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          );
        case 3:
          return PieChartSectionData(
            color: HexColor('F26950'),
            value: 20,
            title: '70',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          );

        default:
          throw Error();
      }
    });
  }
}

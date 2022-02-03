import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class EmployeePerformance extends StatefulWidget {
  const EmployeePerformance({Key? key}) : super(key: key);

  @override
  _EmployeePerformanceState createState() => _EmployeePerformanceState();
}

class _EmployeePerformanceState extends State<EmployeePerformance> {
  @override
  Widget build(BuildContext context) {
    final mywidth= MediaQuery.of(context).size.width;
    final myheight= MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: HexColor('#0F46B3'),
          title: Text('Performance',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
          ),
          actions: [
            Icon(Icons.more_vert),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: mywidth,
                    color: HexColor('#0F46B3'),
                  ),
                  Positioned(
                      child: Center(
                        child: Card(
                          elevation: 4,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          child: SizedBox(
                            height: 150,
                            width: mywidth/1.10,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: CircleAvatar(
                                          radius: 30,
                                          child:ClipOval(child: Image(image:
                                          AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('ManiKandan',style:
                                            TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),

                                            Text('UI Designer',style: TextStyle(color:Colors.grey,fontSize: 14),),

                                            Text('mani1885@gmail.com',style: TextStyle(color:Colors.grey,fontSize: 14),),
                                          ]),
                                      Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20.0),
                                        child: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: 20,),
                                      Container(
                                        height: 2,
                                        width: 50,
                                        color: HexColor('#0F46B3'),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        height: 2,
                                        width: 50,
                                        color: HexColor('#0F46B3'),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        height: 2,
                                        width: 50,
                                        color: HexColor('#0F46B3'),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        height: 2,
                                        width: 50,
                                        color: HexColor('#0F46B3'),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        height: 2,
                                        width: 20,
                                        color: HexColor('#0F46B3'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                    ),
                  ),
                      ))
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: SizedBox(
                    height: 100,
                    width: mywidth/1.10,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: HexColor('#0F46B3'),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomLeft: Radius.circular(20.0))),
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/performanceicon.png'),height: 45,width: 45,),
                              SizedBox(height: 5,),
                              Text('8.1',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Team Members',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,),
                                  child: CircleAvatar(
                                    radius: 20,
                                    child:ClipOval(child: Image(image:
                                    AssetImage('assets/directory/profilepicture.jpg'),height: 40,width: 40,fit: BoxFit.fill,),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    child:ClipOval(child: Image(image:
                                    AssetImage('assets/directory/profilepicture.jpg'),height: 40,width: 40,fit: BoxFit.fill,),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    child:ClipOval(child: Image(image:
                                    AssetImage('assets/directory/profilepicture.jpg'),height: 40,width: 40,fit: BoxFit.fill,),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
               SizedBox(height: 20,),
               Center(
                child: Container(
                  decoration: BoxDecoration( color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [BoxShadow(offset: Offset(0,0.6),blurRadius: 6,color: Colors.grey)]),
                  width: mywidth/1.10,
                  height: myheight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Performance',style: TextStyle(fontWeight:FontWeight.bold,fontSize:15,color: Colors.black),),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: HexColor('#0F46B3'),width: 1.0),),
                          height: myheight/13,
                          width: mywidth/1.10,
                          child: TabBar(
                            unselectedLabelColor: Colors.black,
                            labelColor: Colors.white,
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                              ),
                              color: HexColor('#0F46B3'),
                            ),
                            tabs: [
                              Text('Weekly',),
                              Text('Monthly',),
                              Text('Over all'),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: TabBarView(children:[
                              Weekly(),
                            Text('arun'),
                            Text('kumar'),
                          ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
  Column Weekly(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        Row(
          children: [
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Quaterly Summation',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(height: 5,),
                Text('Quaterly Summation',style: TextStyle(color:Colors.grey,fontSize: 12),)
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(color: HexColor('#0F46B3'),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child:Center(child: Text('80%',style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize: 16),))
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
          child: LinearPercentIndicator(
            percent: 0.5,
            lineHeight: 5,
            progressColor: HexColor('#0F46B3'),
            linearStrokeCap: LinearStrokeCap.roundAll,
            backgroundColor:HexColor('E2E2E2'),

          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('HalfYearly Revenue',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(height: 5,),
                Text('HalfYearly Revenue',style: TextStyle(color:Colors.grey,fontSize: 12),)
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(color: HexColor('#FD5737'),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child:Center(child: Text('48%',style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize: 16),))
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
          child: LinearPercentIndicator(
            percent: 0.5,
            lineHeight: 5,
            progressColor: HexColor('#FD5737'),
            linearStrokeCap: LinearStrokeCap.roundAll,
            backgroundColor:HexColor('E2E2E2'),

          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Yearly Revenue',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(height: 5,),
                Text('Yearly Revenue',style: TextStyle(color:Colors.grey,fontSize: 12),)
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(color: HexColor('#28B000'),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child:Center(child: Text('90%',style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize: 16),))
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
          child: LinearPercentIndicator(
            percent: 0.5,
            lineHeight: 5,
            progressColor: HexColor('#28B000'),
            linearStrokeCap: LinearStrokeCap.roundAll,
            backgroundColor:HexColor('E2E2E2'),

          ),
        ),
        Center(child: Text('View More',style: TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize: 15),))
      ],
    );
  }
}

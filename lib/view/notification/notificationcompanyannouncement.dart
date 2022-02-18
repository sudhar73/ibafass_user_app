import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class NotificationCompanyannouncement extends StatefulWidget {
  const NotificationCompanyannouncement({Key? key}) : super(key: key);

  @override
  _NotificationCompanyannouncementState createState() => _NotificationCompanyannouncementState();
}

class _NotificationCompanyannouncementState extends State<NotificationCompanyannouncement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#DCF4F9'),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                Text(
                  "Today",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "ViewAll",
                  style: TextStyle(fontSize: 18, color: HexColor('#0F46B3')),
                )
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Container(

                width: MediaQuery.of(context).size.width/1.10,
                decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.asset(
                                'assets/firstscreen.png',
                                height: 50,
                                width: 50,
                                fit: BoxFit.fill,
                              )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Text(
                              'Cristopher Tyler',
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 30,),
                            Container(
                              width: MediaQuery.of(context).size.width/1.6,
                              child: Text(
                               ' I have some exciting news for all of you. As of today, there is a vacancy for our role '
                                   'in our [Department] More specifically, we are looking for a new [add job title].'
                                   ' Even though eventually, we plan to publish this job opening to external channels as well, '
                                   'we strongly recommend any current employee who is interested in this role to apply.',
                                style: TextStyle(fontSize: 14,),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('28 minute ago',style: TextStyle(fontSize: 12,color: Colors.grey),),
                        )),
                    SizedBox(height: 20,),
                  ],
                ),
              )),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only( left: 20.0, right: 20.0),
            child: Row(
              children: [
                Text(
                  "Yesterday",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "ViewAll",
                  style: TextStyle(fontSize: 18, color: HexColor('#0F46B3')),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width/1.10,
                decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.asset(
                                'assets/firstscreen.png',
                                height: 50,
                                width: 50,
                                fit: BoxFit.fill,
                              )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Text(
                              'Cristopher Tyler',
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 30,),
                            Container(
                              width: MediaQuery.of(context).size.width/1.6,
                              child: Text(
                                ' I have some exciting news for all of you. As of today, there is a vacancy for our role '
                                    'in our [Department] More specifically, we are looking for a new [add job title].'
                                    ' Even though eventually, we plan to publish this job opening to external channels as well, '
                                    'we strongly recommend any current employee who is interested in this role to apply.',
                                style: TextStyle(fontSize: 14,),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('28 minute ago',style: TextStyle(fontSize: 12,color: Colors.grey),),
                        )),
                    SizedBox(height: 20,),
                  ],
                ),
              )),
          SizedBox(height: 30,),
        ]),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/notification/notificationsettings.dart';

class NotificationAll extends StatefulWidget {
  const NotificationAll({Key? key}) : super(key: key);

  @override
  _NotificationAllState createState() =>
      _NotificationAllState();
}

class _NotificationAllState extends State<NotificationAll> {
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
                  style: TextStyle(fontSize: 18, color: Colors.red),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width/1.10,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/firstscreen.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                      )),
                  title: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 8.0, right: 20.0),
                    child: Text(
                      'Cristopher Tyler added new task webpage design.',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '28 minute ago',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              )),
          SizedBox(height: 20.0,),
          Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width/1.10,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/firstscreen.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                      )),
                  title: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 8.0, right: 20.0),
                    child: Text(
                      'Cristopher Tyler added new task webpage design.',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '28 minute ago',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              )),
          SizedBox(height: 20.0,),
          Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width/1.10,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/firstscreen.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                      )),
                  title: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 8.0, right: 20.0),
                    child: Text(
                      'Cristopher Tyler added new task webpage design.',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '28 minute ago',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
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
                  style: TextStyle(fontSize: 18, color: Colors.red),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width/1.10,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/firstscreen.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                      )),
                  title: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 8.0, right: 20.0),
                    child: Text(
                      'Cristopher Tyler added new task webpage design.',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '28 minute ago',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              )),
          SizedBox(height: 20,),
          Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width/1.10,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/firstscreen.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                      )),
                  title: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 8.0, right: 20.0),
                    child: Text(
                      'Cristopher Tyler added new task webpage design.',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '28 minute ago',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              )),
          SizedBox(height: 20,),
          Padding(
              padding: const EdgeInsets.only(
                 left: 10.0, right: 10.0),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width/1.10,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/firstscreen.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                      )),
                  title: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 8.0, right: 20.0),
                    child: Text(
                      'Cristopher Tyler added new task webpage design.',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '28 minute ago',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              )),
          SizedBox(height: 30,),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NotificationFirstscreen extends StatefulWidget {
  const NotificationFirstscreen({Key? key}) : super(key: key);

  @override
  _NotificationFirstscreenState createState() =>
      _NotificationFirstscreenState();
}

class _NotificationFirstscreenState extends State<NotificationFirstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: HexColor('#0F46B3'),
          centerTitle: true,
          title: Text(
            'Notifications',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
        ),
      ),
      backgroundColor: HexColor('#DCF4F9'),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 15.0, right: 15.0),
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
          Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 15.0,
                right: 15.0,
              ),
              child: Container(
                height: 100,
                width: 500,
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
          Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 15.0,
                right: 15.0,
              ),
              child: Container(
                height: 100,
                width: 500,
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
          Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 15.0,
                right: 15.0,
              ),
              child: Container(
                height: 100,
                width: 500,
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
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 15.0, right: 15.0),
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
          Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 15.0,
                right: 15.0,
              ),
              child: Container(
                height: 100,
                width: 500,
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
          Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 15.0,
                right: 15.0,
              ),
              child: Container(
                height: 100,
                width: 500,
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
          Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 15.0, right: 15.0, bottom: 30.0),
              child: Container(
                height: 100,
                width: 500,
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
        ]),
      ),
    );
  }
}

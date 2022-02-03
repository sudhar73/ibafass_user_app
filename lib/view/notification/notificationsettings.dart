import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:hexcolor/hexcolor.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({Key? key}) : super(key: key);

  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: HexColor('#0F46B3'),
            centerTitle: true,
            title: Text(
              'Notification Settings',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
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
              padding: const EdgeInsets.only(
                top: 40.0,
                left: 25.0,
                right: 25.0,
                bottom: 20.0,
              ),
              child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: Image(
                    image: AssetImage('assets/notification/employee.png'),
                    height: 35,
                    width: 35,
                  ),
                  title: Text(
                    'Employee',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: GFToggle(
                    onChanged: (val) {},
                    value: true,
                    disabledTrackColor: Colors.red,
                    enabledTrackColor: Colors.green,
                    type: GFToggleType.ios,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
                bottom: 20.0,
              ),
              child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: Image(
                    image: AssetImage('assets/notification/holidays.png'),
                    height: 35,
                    width: 35,
                  ),
                  title: Text(
                    'Holidays',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: GFToggle(
                    onChanged: (val) {},
                    value: true,
                    disabledTrackColor: Colors.red,
                    enabledTrackColor: Colors.green,
                    type: GFToggleType.ios,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
                bottom: 20.0,
              ),
              child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: Image(
                    image: AssetImage('assets/notification/leaves.png'),
                    height: 35,
                    width: 35,
                  ),
                  title: Text(
                    'Leaves',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: GFToggle(
                    onChanged: (val) {},
                    value: true,
                    disabledTrackColor: Colors.red,
                    enabledTrackColor: Colors.green,
                    type: GFToggleType.ios,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
                bottom: 20.0,
              ),
              child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: Image(
                    image: AssetImage('assets/notification/Events.png'),
                    height: 35,
                    width: 35,
                  ),
                  title: Text(
                    'Events',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: GFToggle(
                    onChanged: (val) {},
                    value: true,
                    disabledTrackColor: Colors.red,
                    enabledTrackColor: Colors.green,
                    type: GFToggleType.ios,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
                bottom: 20.0,
              ),
              child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: Image(
                    image:
                        AssetImage('assets/notification/companyannouncement.png'),
                    height: 35,
                    width: 35,
                  ),
                  title: Text(
                    'Company Announcement',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: GFToggle(
                    onChanged: (val) {},
                    value: true,
                    disabledTrackColor: Colors.red,
                    enabledTrackColor: Colors.green,
                    type: GFToggleType.ios,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
                bottom: 20.0,
              ),
              child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: Image(
                    image: AssetImage('assets/notification/Chats.png'),
                    height: 35,
                    width: 35,
                  ),
                  title: Text(
                    'Chats',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: GFToggle(
                    onChanged: (val) {},
                    value: true,
                    disabledTrackColor: Colors.red,
                    enabledTrackColor: Colors.green,
                    type: GFToggleType.ios,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
                bottom: 20.0,
              ),
              child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: Image(
                    image: AssetImage('assets/notification/jobs.png'),
                    height: 35,
                    width: 35,
                  ),
                  title: Text(
                    'Jobs',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: GFToggle(
                    onChanged: (val) {},
                    value: true,
                    disabledTrackColor: Colors.red,
                    enabledTrackColor: Colors.green,
                    type: GFToggleType.ios,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
                bottom: 20.0,
              ),
              child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  leading: Image(
                    image: AssetImage('assets/notification/salarycredited.png'),
                    height: 35,
                    width: 35,
                  ),
                  title: Text(
                    'Salary Credited',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: GFToggle(
                    onChanged: (val) {},
                    value: true,
                    disabledTrackColor: Colors.red,
                    enabledTrackColor: Colors.green,
                    type: GFToggleType.ios,
                  )),
            ),
          ]),
        ));
  }
}

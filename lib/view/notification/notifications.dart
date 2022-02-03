import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:ibafass/view/notification/notificationall.dart';
import 'package:ibafass/view/notification/notificationcompanyannouncement.dart';
import 'package:ibafass/view/notification/notificationsettings.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = new TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: HexColor('#DCF4F9'),
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
          actions: [IconButton(onPressed: (
              ) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationSettings(),));
          },icon: Icon(Icons.settings))],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/8,
            width: MediaQuery.of(context).size.width/1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: DefaultTabController(
                length: 2,
                child: ButtonsTabBar(
                 backgroundColor:HexColor('#0F46B3'),
                  buttonMargin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 8.0),
                  unselectedLabelStyle: TextStyle(color:HexColor('#0F46B3')),
                  labelStyle: TextStyle(color: Colors.white),
                  radius: 18.0,
                  unselectedBackgroundColor: Colors.white,
                  controller: _tabcontroller,
                  tabs: [
                    Tab(
                      text: '        All        ',
                    ),
                    Tab(
                     text: '          Company Announcement        ',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: DefaultTabController(
              initialIndex: 0,
              length: 2,
              child: Container(
                height: MediaQuery.of(context).size.height,
                color: HexColor('#DCF4F9'),
                child: TabBarView(
                  controller: _tabcontroller,
                  children: [
                    NotificationAll(),
                    NotificationCompanyannouncement(),
                  ],
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}

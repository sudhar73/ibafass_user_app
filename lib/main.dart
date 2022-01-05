import 'package:flutter/material.dart';
import 'package:ibafass/view/allemployees.dart';
import 'package:ibafass/view/directory.dart';
import 'package:ibafass/view/employees/departments.dart';
import 'package:ibafass/view/employees/designations.dart';
import 'package:ibafass/view/employees/employeprofile/personal%20information.dart';
import 'package:ibafass/view/employees/holiday.dart';
import 'package:ibafass/view/employees/schedule.dart';
import 'package:ibafass/view/notification/notification.dart';
import 'package:ibafass/view/notification/notificationsettings.dart';
import 'package:ibafass/view/payment/addnewcard.dart';
import 'package:ibafass/view/payment/confirmtransfer.dart';
import 'package:ibafass/view/payment/creditcard.dart';
import 'package:ibafass/view/payment/payment.dart';
import 'package:ibafass/view/payment/paymentone.dart';
import 'package:ibafass/view/payment/savemycard.dart';
import 'package:ibafass/view/payment/topupcreditcard.dart';
import 'package:ibafass/view/payment/transferamountsuccess.dart';
import 'package:ibafass/view/settingprofile.dart';
import 'package:ibafass/view/menubar.dart';
import 'package:ibafass/view/tasks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home:  Tasks());
  }
}

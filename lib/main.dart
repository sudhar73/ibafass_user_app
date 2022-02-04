import 'package:flutter/material.dart';
import 'package:ibafass/view/allemployees.dart';
import 'package:ibafass/view/bankinformation.dart';
import 'package:ibafass/view/chats/chats.dart';
import 'package:ibafass/view/chats/chatscreen.dart';
import 'package:ibafass/view/dashboard.dart';
import 'package:ibafass/view/directory.dart';
import 'package:ibafass/view/employees/addemployee.dart';
import 'package:ibafass/view/employees/advancerequest.dart';
import 'package:ibafass/view/employees/attendance/attendance.dart';
import 'package:ibafass/view/employees/attendance/employeeattendance.dart';
import 'package:ibafass/view/employees/attendance/employeeattendancedetails.dart';
import 'package:ibafass/view/employees/departments.dart';
import 'package:ibafass/view/employees/designations.dart';
import 'package:ibafass/view/employees/employeeperformance.dart';
import 'package:ibafass/view/employees/employerprofile.dart';
import 'package:ibafass/view/employees/expenses.dart';
import 'package:ibafass/view/employees/holiday.dart';
import 'package:ibafass/view/employees/leave/applyleave.dart';
import 'package:ibafass/view/employees/leave/leaveappliedsuccessfully.dart';
import 'package:ibafass/view/employees/leave/leaves.dart';
import 'package:ibafass/view/employees/schedule.dart';
import 'package:ibafass/view/homepage.dart';
import 'package:ibafass/view/kpi.dart';
import 'package:ibafass/view/myprofile/myprofile.dart';
import 'package:ibafass/view/myworks.dart';
import 'package:ibafass/view/notification/notificationall.dart';
import 'package:ibafass/view/notification/notifications.dart';
import 'package:ibafass/view/notification/notificationsettings.dart';
import 'package:ibafass/view/payment/addnewcard.dart';
import 'package:ibafass/view/payment/confirmtransfer.dart';
import 'package:ibafass/view/payment/creditcard.dart';
import 'package:ibafass/view/payment/payment.dart';
import 'package:ibafass/view/payment/paymentone.dart';
import 'package:ibafass/view/payment/savemycard.dart';
import 'package:ibafass/view/payment/topupcreditcard.dart';
import 'package:ibafass/view/payment/transferamountsuccess.dart';
import 'package:ibafass/view/payment/upi.dart';
import 'package:ibafass/view/payslipgenerator/payroll.dart';
import 'package:ibafass/view/payslipgenerator/payslip.dart';
import 'package:ibafass/view/payslipgenerator/salarydetails.dart';
import 'package:ibafass/view/project.dart';
import 'package:ibafass/view/projectdetails.dart';
import 'package:ibafass/view/settingprofile.dart';
import 'package:ibafass/view/menubar.dart';
import 'package:ibafass/view/settings/approvalsettings/expensesapproval.dart';
import 'package:ibafass/view/settings/approvalsettings/leaveapproval.dart';
import 'package:ibafass/view/settings/approvalsettings/offerapproval.dart';
import 'package:ibafass/view/settings/basicsettings.dart';
import 'package:ibafass/view/settings/changepasswordsettings.dart';
import 'package:ibafass/view/settings/companysettings.dart';
import 'package:ibafass/view/settings/emailsetings.dart';
import 'package:ibafass/view/settings/invoice%20settings.dart';
import 'package:ibafass/view/settings/localization.dart';
import 'package:ibafass/view/settings/salarysettings.dart';
import 'package:ibafass/view/skillmatrixtraining.dart';
import 'package:ibafass/view/subscription/plans.dart';
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
        home: MenuBar());
  }
}

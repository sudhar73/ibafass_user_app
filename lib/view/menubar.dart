import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/allemployees.dart';
import 'package:ibafass/view/employees/advancerequest.dart';
import 'package:ibafass/view/employees/departments.dart';
import 'package:ibafass/view/employees/designations.dart';
import 'package:ibafass/view/employees/expenses.dart';
import 'package:ibafass/view/employees/holiday.dart';
import 'package:ibafass/view/employees/schedule.dart';
import 'package:ibafass/view/notification/notifications.dart';
import 'package:ibafass/view/payslipgenerator/payslip.dart';
import 'settingprofile.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
            elevation: 0.0,
            backgroundColor:HexColor('#0F46B3'),
            leading: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 25,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0,right: 20.0),
                child: IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const Notifications()),
                    );
                  },
                  icon: Icon(Icons.notifications,color: Colors.white,size: 25,),
                )
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingProfile()),
                  );
                },
                child:Padding(
                  padding: const EdgeInsets.only(right: 20.0,top: 10.0),
                  child: CircleAvatar(
                    radius: 25,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/payment/profilepic.jpg'),
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ]
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 10,),
          ListTile(
            title: Text(
              'MENU',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              (Icons.cancel_outlined),
              size: 25.0,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          ListTile(
              title: Text(
                'Dashboard',
                style: TextStyle(fontSize: 20),
              ),
              leading: Image(
                image: AssetImage("assets/drawer/Dashboard.png"),
                height: 50,
                width: 50,
              ),
              trailing: Icon(
                (Icons.arrow_right_alt_rounded),
                size: 30.0,
                color: HexColor('#0F46B3'),
              )),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PaySlip()),
              );
            },
            title: Text(
              'Payslip Generator',
              style: TextStyle(fontSize: 20),
            ),
            leading: Image(
              image: AssetImage("assets/drawer/payslipgenerator.png"),
              height: 50,
              width: 50,
            ),
          ),
          Center(
            child: ExpansionTile(
              title: Text(
                'Company Profile',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Image(
                image: AssetImage('assets/drawer/companyprofile.png'),
                height: 50,
                width: 50,
              ),
            ),
          ),
          Center(
            child: ExpansionTile(
              title: Text(
                'Employees',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 10.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllEmployees()));
                    },
                    title: Text(
                      'All Employees',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 10.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Holiday()));
                    },
                    title: Text(
                      'Holidays',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 10.0),
                  child: ListTile(
                    onTap: () {

                    },
                    title: Text(
                      'Leaves (Employee)',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 10.0),
                  child: ListTile(
                    title: Text(
                      'Attendance',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 10.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Departments()));
                    },
                    title: Text(
                      'Departments',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 10.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Designations()));
                    },
                    title: Text(
                      'Designations',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 10.0),
                  child: ListTile(
                    onTap: () {

                    },
                    title: Text(
                      'Time Sheet',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 10.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>Schedule() ));
                    },
                    title: Text(
                      'Shift & Schedule',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdvanceRequest()));
                    },
                    title: Text(
                      'Advance Request',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>Expenses()));
                    },
                    title: Text(
                      'Expenses',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
              leading: Image(
                image: AssetImage('assets/drawer/employees.png'),
                height: 50,
                width: 50,
              ),
            ),
          ),
          ExpansionTile(
            title: Text(
              'My Profile',
              style: TextStyle(fontSize: 20),
            ),
            leading: Image(
              image: AssetImage('assets/drawer/myprofile.png'),
              height: 50,
              width: 50,
            ),
          ),
          ExpansionTile(
            title: Text(
              'Attendance',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            leading: Image(
              image: AssetImage('assets/drawer/attendance.png'),
              height: 50,
              width: 50,
            ),
          ),
          ExpansionTile(
            title: Text(
              'Leave',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            leading: Image(
              image: AssetImage('assets/drawer/leave.png'),
              height: 50,
              width: 50,
            ),
          ),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 20),
            ),
            leading: Image(
              image: AssetImage('assets/drawer/settings.png'),
              height: 50,
              width: 50,
            ),
          ),


        ]),
      ),
    );
  }
}

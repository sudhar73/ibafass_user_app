import 'package:flutter/material.dart';
import 'package:ibafass/view/allemployees.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          ListTile(
            title: Text(
              'MENU',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              (Icons.cancel_outlined),
              size: 30.0,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Divider(
              thickness: 2,
              color: Colors.black,
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
                color: Colors.blueAccent,
              )),
          ListTile(
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
                'Company profile',
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
                    title: Text(
                      'Holidays',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 10.0),
                  child: ListTile(
                    title: Text(
                      'Leaves(Employee)',
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
                    title: Text(
                      'Departments',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 10.0),
                  child: ListTile(
                    title: Text(
                      'Designations',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 10.0),
                  child: ListTile(
                    title: Text(
                      'Time Sheet',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 10.0),
                  child: ListTile(
                    title: Text(
                      'Shift&Schedule',
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
              'MyProfile',
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

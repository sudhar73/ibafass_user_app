import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/allemployees.dart';
import 'package:ibafass/view/chats/chats.dart';
import 'package:ibafass/view/dashboard.dart';
import 'package:ibafass/view/employees/advancerequest.dart';
import 'package:ibafass/view/employees/attendance/attendance.dart';
import 'package:ibafass/view/employees/departments.dart';
import 'package:ibafass/view/employees/designations.dart';
import 'package:ibafass/view/employees/expenses.dart';
import 'package:ibafass/view/employees/holiday.dart';
import 'package:ibafass/view/employees/leave/leaves.dart';
import 'package:ibafass/view/employees/schedule.dart';
import 'package:ibafass/view/employees/timesheet.dart';
import 'package:ibafass/view/kpi.dart';
import 'package:ibafass/view/myworks.dart';
import 'package:ibafass/view/notification/notifications.dart';
import 'package:ibafass/view/payslipgenerator/payslip.dart';
import 'package:ibafass/view/project.dart';
import 'package:ibafass/view/skillmatrixtraining.dart';
import 'package:ibafass/view/subscription/plans.dart';
import 'package:ibafass/view/subscription/subscription.dart';
import 'package:ibafass/view/tasks.dart';
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
                  icon: Icon(Icons.notifications,color: Colors.white,),
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
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'MENU',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  (Icons.cancel_outlined),
                  size: 25.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()),
              );

            },
              title: Text(
                'Dashboard',
                style: TextStyle(fontSize: 20),
              ),
              leading: Container(
                decoration: BoxDecoration(color: HexColor('#D4E8FF'),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage("assets/drawer/dashboard.png"),

                ),
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
            leading: Container(
              decoration: BoxDecoration(color: HexColor('#F6EFD1'),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage("assets/drawer/payslipgenerator.png"),

              ),
            ),
          ),
          Center(
            child: ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Projects()),
                );

              },
              title: Text(
                'Project',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Container(
                decoration: BoxDecoration(color: HexColor('#E0EFFF'),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage('assets/drawer/project.png'),

                ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Leaves()),
                      );

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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Attendance())
                      );
                    },
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
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TimeSheet()),
                      );
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
              leading: Container(
                decoration: BoxDecoration(color: HexColor('#F6EFD1'),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage('assets/drawer/employees.png'),

                ),
              ),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SubscriptionPlans()),
              );

            },
            title: Text('Subscription',
              style: TextStyle(fontSize: 20),
            ),
            leading: Container(
              decoration: BoxDecoration(color: HexColor('#F6EFD1'),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage('assets/drawer/subscription.png'),

              ),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Kpi()),
              );

            },
            title: Text('KPI',
              style: TextStyle(fontSize: 20),
            ),
            leading: Container(
              decoration: BoxDecoration(color: HexColor('#E5F5EF'),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage('assets/drawer/kpi.png'),

              ),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Chats()),
              );

            },
            title: Text('Chat',
              style: TextStyle(fontSize: 20),
            ),
            leading: Container(
              decoration: BoxDecoration(color: HexColor('#FDE5FF'),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage('assets/drawer/chat.png'),

              ),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyWorks()),
              );

            },
            title: Text(
              'My Work',
              style: TextStyle(fontSize: 20),
            ),
            leading: Container(
              decoration: BoxDecoration(color: HexColor('#E5F7ED'),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage('assets/drawer/mywork.png'),

              ),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SkillMatrixTraining()),
              );

            },
            title: Text(
              'Skill Matrix',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            leading: Container(
              decoration: BoxDecoration(color: HexColor('#FFF6E5'),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage('assets/drawer/skillmatrix.png'),
              ),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Tasks()),
              );

            },
            title: Text(
              'Task',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            leading: Container(
              decoration: BoxDecoration(color: HexColor('#FFE5FD'),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage('assets/drawer/task.png'),

              ),
            ),
          ),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 20),
            ),
            leading: Container(
              decoration: BoxDecoration(color: HexColor('#E0EFFF'),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage('assets/drawer/settings.png'),

              ),
            ),
          ),


        ]),
      ),
    );
  }
}

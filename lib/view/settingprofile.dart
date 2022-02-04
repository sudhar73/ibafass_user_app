import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/settings/approvalsettings/expensesapproval.dart';
import 'package:ibafass/view/settings/changepasswordsettings.dart';
import 'package:ibafass/view/settings/companysettings.dart';
import 'package:ibafass/view/settings/emailsetings.dart';
import 'package:ibafass/view/settings/invoice%20settings.dart';
import 'package:ibafass/view/settings/localization.dart';
import 'package:ibafass/view/settings/salarysettings.dart';

import 'myprofile/myprofile.dart';

class SettingProfile extends StatefulWidget {
  const SettingProfile({Key? key}) : super(key: key);

  @override
  _SettingProfileState createState() => _SettingProfileState();
}

class _SettingProfileState extends State<SettingProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
      ),
        body: SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  'assets/drawer/person.jpg',
                  height: 60,
                  width: 60,
                  fit: BoxFit.fill,
                )),
            title: Text(
              "Mani",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: Text("@mani95"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Center(
            child: ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              title: Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Container(
                decoration: BoxDecoration(
                    color: HexColor('#E5F1FF'),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage('assets/profile/myprofile.png'),
                ),
              ),
            ),
          ),
          Center(
            child: ExpansionTile(
              title: Text(
                'Notification',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Container(
                decoration: BoxDecoration(
                    color: HexColor('#E8FBF5'),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage('assets/profile/notification.png'),

                ),
              ),
            ),
          ),
          Center(
            child: ExpansionTile(
              title: Text(
                'Forums',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Container(
                decoration: BoxDecoration(color: HexColor('#FFFCE9'),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage('assets/profile/forums.png'),
                ),
              ),
            ),
          ),
          Center(
            child: ExpansionTile(
              title: Text(
                'Edit profile',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Container(
                decoration: BoxDecoration(color: HexColor('#FAEFFF'),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage('assets/profile/editprofile.png'),
                ),
              ),
            ),
          ),
          Center(
            child: ExpansionTile(
              title: Text(
                'Search',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Container(
                decoration: BoxDecoration(color: HexColor('#FFEAEF'),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage('assets/profile/search.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Divider(
              thickness: 1.0,
              color: Colors.grey,
            ),
          ),
          Center(
            child: ExpansionTile(
              children: [
                ListTile(
                  title: Text('Change Password'),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChangePassword()),
                    );
                  },
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CompanySettings()),
                    );
                  },
                  title: Text('Company Settings'),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Localization()),
                    );

                  },
                  title: Text('Localization'),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EmailSettings ()),
                    );

                  },
                  title: Text('Email Settings'),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const invoiceSettings()),
                    );

                  },
                  title: Text('Invoice Settings'),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const  SalarySettings()),
                    );

                  },
                  title: Text('Salary Settings'),
                ),
                ListTile(
                  title: Text('Approval Settings'),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ExpensesApproval()),
                    );
                  },
                )
              ],
              title: Text(
                'Setting',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Container(
                decoration: BoxDecoration(color: HexColor('#E5F1FF'),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage('assets/profile/setting.png'),
                ),
              ),
            ),
          ),
          Center(
            child: ExpansionTile(
              title: Text(
                'about us',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Container(
                decoration: BoxDecoration(color: HexColor('#EEFAFF'),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage('assets/profile/aboutus.png'),
                ),
              ),
            ),
          ),
          Center(
            child: ExpansionTile(
              title: Text(
                'Language',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Container(
                decoration: BoxDecoration(color: HexColor('#FFF6E9'),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage('assets/profile/language.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Center(
            child: ExpansionTile(
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Container(
                decoration: BoxDecoration(color: HexColor('#FF375F'),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage('assets/profile/logout.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

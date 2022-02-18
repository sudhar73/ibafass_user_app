import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/editprofile.dart';
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
        leading: IconButton(
          onPressed: (){ Navigator.pop(context);},
         icon:Icon(Icons.arrow_back,color: Colors.black,),
      ),),
        body: SingleChildScrollView(
             child: Column(
               children: [
                 Row(

                   children: [
                     SizedBox(width: 15,),
                     CircleAvatar(
                       radius: 30,
                       backgroundImage: AssetImage('assets/payment/profilepic.jpg'),
                     ),
                     SizedBox(width: 10,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           "Mani",
                           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                         ),
                         Text("@mani95"),

                       ],
                     )
                   ],
                 ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 5,),
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
                  image: AssetImage('assets/profile/My Profile.png'),
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
                  image: AssetImage('assets/profile/Notification.png'),

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
                  image: AssetImage('assets/profile/Forums.png'),
                ),
              ),
            ),
          ),
          Center(
            child: ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditProfile()),
                );
              },
              title: Text(
                'Edit Profile',
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
                  image: AssetImage('assets/profile/Edit Profile.png'),
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
                  image: AssetImage('assets/profile/Search.png'),
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
                  leading: Container(
                    decoration: BoxDecoration(color: HexColor('#C3F4F8'),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage('assets/profile/setting/Change password.png'),
                    ),
                  ),
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
                  leading: Container(
                    decoration: BoxDecoration(color: HexColor('#D3FFDF'
  ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage('assets/profile/setting/Company Settings.png'),
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Localization()),
                    );

                  },
                  title: Text('Localization'),
                  leading: Container(
                    decoration: BoxDecoration(color: HexColor('#FFE8BA'
    ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage('assets/profile/setting/Localization.png'),
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EmailSettings ()),
                    );

                  },
                  title: Text('Email Settings'),
                  leading: Container(
                    decoration: BoxDecoration(color: HexColor('#C5F8FD'
    ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage('assets/profile/setting/Email Settings.png'),
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const invoiceSettings()),
                    );

                  },
                  title: Text('Invoice Settings'),
                  leading: Container(
                    decoration: BoxDecoration(color: HexColor('#FCE6E0'),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage('assets/profile/setting/Invoice Settings.png'),
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const  SalarySettings()),
                    );

                  },
                  title: Text('Salary Settings'),
                  leading: Container(
                    decoration: BoxDecoration(color: HexColor('#F6E6FF'),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage('assets/profile/setting/Salary Settings.png'),
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Approval Settings'),
                  leading: Container(
                    decoration: BoxDecoration(color: HexColor('#FFDEE9'
    ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage('assets/profile/setting/Approval Settings.png'),
                    ),
                  ),
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
                  image: AssetImage('assets/profile/Setting.png'),
                ),
              ),
            ),
          ),
          Center(
            child: ExpansionTile(
              title: Text(
                'About Us',
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
                  image: AssetImage('assets/profile/About Us.png'),
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
                  image: AssetImage('assets/profile/Language.png'),
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
            child: ListTile(
              title: Text(
                'Log out',
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
                  image: AssetImage('assets/profile/Log Out.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

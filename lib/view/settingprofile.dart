import 'package:flutter/material.dart';

class SettingProfile extends StatefulWidget {
  const SettingProfile({Key? key}) : super(key: key);

  @override
  _SettingProfileState createState() => _SettingProfileState();
}

class _SettingProfileState extends State<SettingProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(top: 50.0),
            leading: Icon(
              Icons.arrow_back,
              size: 40,
            ),
          ),
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
            child: ExpansionTile(
              title: Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Image(
                image: AssetImage('assets/profile/MyProfile.png'),
                height: 50,
                width: 50,
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
              leading: Image(
                image: AssetImage('assets/profile/firstscreen.png'),
                height: 50,
                width: 50,
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
              leading: Image(
                image: AssetImage('assets/profile/forums.png'),
                height: 50,
                width: 50,
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
              leading: Image(
                image: AssetImage('assets/profile/editprofile.png'),
                height: 50,
                width: 50,
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
              leading: Image(
                image: AssetImage('assets/profile/search.png'),
                height: 50,
                width: 50,
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
                'Setting',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Image(
                image: AssetImage('assets/profile/setting.png'),
                height: 50,
                width: 50,
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
              leading: Image(
                image: AssetImage('assets/profile/aboutus.png'),
                height: 50,
                width: 50,
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
              leading: Image(
                image: AssetImage('assets/profile/Language.png'),
                height: 50,
                width: 50,
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
              leading: Image(
                image: AssetImage('assets/profile/logout.png'),
                height: 50,
                width: 50,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

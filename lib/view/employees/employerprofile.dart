import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/src/material/tab_controller.dart';

class Employeprofile extends StatefulWidget {
  const Employeprofile({Key? key}) : super(key: key);

  @override
  _EmployeprofileState createState() => _EmployeprofileState();
}

class _EmployeprofileState extends State<Employeprofile> with TickerProviderStateMixin  {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = new TabController(length: 3, vsync: this);
    final myheight=MediaQuery.of(context).size.height;
    final mywidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          elevation: 0.0,
          centerTitle:true,
          backgroundColor: HexColor('#0F46B3'),
          title: Text('Employer Profile',style: TextStyle(color: Colors.white,
              fontSize: 20,fontWeight: FontWeight.bold),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: (){},
            )
          ],
        ),
      ),
       body: Column(
         children: [
           Container(
             color: HexColor('#0F46B3'),
             child: Column(
               children: [
                 CircleAvatar(
                   radius: 45,
                   child: ClipOval(
                     child: Image(
                       image: AssetImage('assets/payment/profilepic.jpg'),
                       fit: BoxFit.cover,
                       height: 90,
                       width: 90,
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Center(
                   child: Text(
                     'Mani',
                     style: TextStyle(
                       fontSize: 22,
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                 ),
                 Center(
                   child: Text(
                     'UI Designer',
                     style: TextStyle(
                       fontSize: 13,
                       color: Colors.white,
                     ),
                   ),
                 ),
                 SizedBox(height: 20,),
               ],
             ),
           ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: HexColor('#DCF4F9'),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    )),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
               Padding(
                     padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20),
                     child: DefaultTabController(
                       length: 3,
                       child: Container(
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius:BorderRadius.all(Radius.circular(30)),
                         ),
                         height: myheight/11,
                         width: mywidth/1.10,
                         child: Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: TabBar(
                             controller: _tabcontroller,
                             unselectedLabelColor: Colors.black,
                             labelColor: Colors.white,
                             indicator: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: HexColor('#0F46B3')),
                             tabs: [
                               Tab( child: Center(
                                 child: Icon(
                                   Icons.person,
                                   color: Colors.black,
                                   size: 30,
                                 ),
                               )),
                               Tab(child: Center(
                                 child: Icon(
                                   Icons.school,
                                   color: Colors.black,
                                   size: 30,
                                 ),
                               ),),
                               Tab( child: Center(
                                 child: Icon(
                                   Icons.note_add,
                                   color: Colors.black,
                                   size: 30,
                                 ),
                               ),)
                             ],
                           ),
                         ),
                       ),
                     ),
               ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                      child: DefaultTabController(
                        length: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(30))),

                          height: myheight/2.5,
                          child: TabBarView( controller: _tabcontroller,
                              children:[
                                PersonalInformation(),
                                EducationInformation(),
                                CareerExperience(),
                              ]
                          ),
                        ),
                      ),
                    ),
           ],
                ),
              ),
            ),

         ],
       ),
    );
  }

  PersonalInformation() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Personal Information',
              style: TextStyle(
                  color: HexColor('#0F46B3'),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Divider(
            color: Colors.blue,
            thickness: 1,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Employee ID   :',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  '04356',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Phone No      :',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  '+91 86107 87693',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Email           :',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'mani25@gmail.com',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Gender      :',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Male',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'birthday       :',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  '20-02-1995',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  EducationInformation() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Education Information',
              style: TextStyle(
                  color: HexColor('#0F46B3'),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Divider(
            color: Colors.blue,
            thickness: 1,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 6),
              child: Icon(
                Icons.circle,
                color: HexColor('#0F46B3'),
                size: 10,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '2008 - 2010',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColor('#0F46B3'),
                      fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'SCAD College of Engineering',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'B.E Computer Science',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColor('#0F46B3'),
                      fontSize: 18),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 6),
              child: Icon(
                Icons.circle,
                color: HexColor('#0F46B3'),
                size: 10,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '2008 - 2010',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColor('#0F46B3'),
                      fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'SCAD College of Engineering',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'B.E Computer Science',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColor('#0F46B3'),
                      fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  CareerExperience() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Career Experience',
              style: TextStyle(
                  color: HexColor('#0F46B3'),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Divider(
            color: Colors.blue,
            thickness: 1,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 6),
              child: Icon(
                Icons.circle,
                color: HexColor('#0F46B3'),
                size: 10,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '2008 - 2010',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColor('#0F46B3'),
                      fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'CRT Information Technology',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'UI Designer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColor('#0F46B3'),
                      fontSize: 18),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 6),
              child: Icon(
                Icons.circle,
                color: HexColor('#0F46B3'),
                size: 10,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '2008 - 2010',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColor('#0F46B3'),
                      fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'OX Software',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'UI Designer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColor('#0F46B3'),
                      fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

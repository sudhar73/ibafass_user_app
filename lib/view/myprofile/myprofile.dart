import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/myprofile/documents.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  final color = HexColor("#0F46B3");
  final BackgroundColor = HexColor("#DCF4F9");

  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;

    TabController _tabcontroller = new TabController(length: 3, vsync: this);

    return Scaffold(
        backgroundColor: HexColor('#0F46B3'),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
              leading: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              actions: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,right: 20.0),
                    child: Icon(Icons.notifications,color: Colors.black,size: 25,),
                  ),
                InkWell(
                  onTap: () {
                    print("Inside the Image");
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
        body: Column(children: [Padding(
            padding: const EdgeInsets.only(left: 40, top: 10),
            child: Container(
              height: myheight / 20,
              width: mywidth,
              //color: Colors.red,
              child: Text(
                'Manikandan',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: DefaultTabController(
              length: 3,
              child: Container(
                height: myheight / 17,
                width: mywidth,
                child: TabBar(
                  controller: _tabcontroller,
                  unselectedLabelColor: Colors.black,
                  indicator: UnderlineTabIndicator( borderSide: BorderSide(color:Colors.white,width: 3.0),
    insets: EdgeInsets.only(left:40,right: 40),),
                  tabs: [
                    Tab(
                      child: Text(
                        'Family',style: TextStyle(color: Colors.white,fontSize: 18,),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Documents',style: TextStyle(color: Colors.white,fontSize: 18,),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Team',style: TextStyle(color: Colors.white,fontSize: 18,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Container(
                child: TabBarView(
                  controller: _tabcontroller,
                  children: [
                    family(context),
                   Documents(),
                   Team(context),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
  /// Family Tab Datas

  Widget family(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          color: BackgroundColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: myheight,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      height: myheight / 10,
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Text("Family Members",
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white), ),
                          Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: myheight / 3,
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                            offset: Offset(0,3.0),color: Colors.grey,blurRadius: 4
                          )],
                          color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Name  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Relationship  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Phone Number  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Dob  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Address  :",style: TextStyle(color: Colors.grey),),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sankar Kumar",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Text("Father",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Text("+91 86017 56781",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Text("25/02/2000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Container(width: mywidth/3.5,
                                      child: Text("46, North street,PoonmalleeChennai - 600 056",
                                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),

                                  ],
                                )),

                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: mywidth/12,),
                        Text("EMERGENCY CONTACT :",
                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),
                            ),
                      ],
                    ),
                    //
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: myheight / 3,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                                offset: Offset(0,3.0),color: Colors.grey,blurRadius: 4
                            )],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Name  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Relationship  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Phone Number  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Dob  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Address  :",style: TextStyle(color: Colors.grey),),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sankar Kumar",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Text("Father",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Text("+91 86017 56781",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Text("25/02/2000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Container(width: mywidth/3.5,
                                      child: Text("46, North street,PoonmalleeChennai - 600 056",
                                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),

                                  ],
                                )),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      // Container(
      //   color: Colors.green,
      // )
    );
  }
  Widget Team(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          color: BackgroundColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: myheight,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      height: myheight / 10,
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Text("REPORTING MANAGER",
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white), ),
                          Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: myheight / 3,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                                offset: Offset(0,3.0),color: Colors.grey,blurRadius: 4
                            )],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Name  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Relationship  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Phone Number  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Dob  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Address  :",style: TextStyle(color: Colors.grey),),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sankar Kumar",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Text("Father",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Text("+91 86017 56781",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Text("25/02/2000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Container(width: mywidth/3.5,
                                      child: Text("46, North street,PoonmalleeChennai - 600 056",
                                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),

                                  ],
                                )),

                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: mywidth/12,),
                        Text("EMERGENCY CONTACT :",
                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                      ],
                    ),
                    //
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: myheight / 3,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                                offset: Offset(0,3.0),color: Colors.grey,blurRadius: 4
                            )],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Name  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Relationship  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Phone Number  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Dob  :",style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: myheight/40,),
                                    Text("Address  :",style: TextStyle(color: Colors.grey),),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sankar Kumar",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Text("Father",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Text("+91 86017 56781",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Text("25/02/2000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: myheight/40,),
                                    Container(width: mywidth/3.5,
                                      child: Text("46, North street,PoonmalleeChennai - 600 056",
                                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      // Container(
      //   color: Colors.green,
      // )
    );
  }
}

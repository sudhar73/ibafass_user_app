import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class MyWorks extends StatefulWidget {
  const MyWorks({Key? key}) : super(key: key);

  @override
  _MyWorksState createState() => _MyWorksState();
}

class _MyWorksState extends State<MyWorks> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    final color = HexColor("#DCF4F9");
    return Scaffold(
      backgroundColor: color,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          elevation: 0.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(35.0),bottomStart: Radius.circular(35.0))),
            backgroundColor: Colors.white,

            title: Text('My works',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black),),
            leading: Icon(
              Icons.arrow_back,
              color: Colors.black,
                         ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10,),
                child: Icon(Icons.notifications,
                    color: Colors.black, size: 25),
              ),
              SizedBox(
                width: mywidth / 15,
              ),
              InkWell(
                onTap: () {
                  print("Inside the Image");
                },
                child:Padding(
                  padding: const EdgeInsets.only(right: 20,top: 10),
                  child: CircleAvatar(
                    radius: 25,

                     backgroundImage:  AssetImage('assets/payment/profilepic.jpg'),


                  ),
                ),
              )
            ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(
              child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),

                height: 60,
                width: MediaQuery.of(context).size.width/1.10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Project Name',
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.search,color: Colors.black,)
                          ),
                        )
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
                children: [Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('My work orders',style: TextStyle(fontSize: 18),),
                ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 35.0,
                      width: 35.0,
                      child: FittedBox(
                        child: FloatingActionButton(
                          backgroundColor: HexColor('#0F46B3'),
                          child: Icon(Icons.add),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Container(
                  decoration: BoxDecoration(color: HexColor('#0F46B3'),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  height: myheight/8,
                  width: mywidth/4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('In Process',style: TextStyle(color:Colors.white,fontSize: 16),),
                      SizedBox(height: 5,),
                      Text('10',style: TextStyle(color:Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
                    ],
                  ),

                ),

                Container(
                  decoration: BoxDecoration(color: HexColor('#007614'),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  height: myheight/8,
                  width: mywidth/4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Completed',style: TextStyle(color:Colors.white,fontSize: 16),),
                      SizedBox(height: 5,),
                      Text('08',style: TextStyle(color:Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(color: HexColor('#DB002C'),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  height: myheight/8,
                  width: mywidth/4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(' On Hold',style: TextStyle(color:Colors.white,fontSize: 16),),
                      SizedBox(height: 5,),
                      Text('04',style: TextStyle(color:Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,),
              child: Text('Team Members:',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 20,),
                CircleAvatar(
                  radius: 30,
                  child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),
                  ),
                ),
                SizedBox(width: 5,),
                CircleAvatar(
                  radius: 30,
                  child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),
                  ),
                ),
                SizedBox(width: 5,),
                CircleAvatar(
                  radius: 30,
                  child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,)
                  ),
                ),
                SizedBox(width: 5,),
                CircleAvatar(
                  radius: 30,
                  child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),
                  ),
                ),
                SizedBox(width: 5,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 40.0,
                    width: 40.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: HexColor('#9C59D2'),
                        child: Icon(Icons.add),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: myheight,
              width: mywidth,
              decoration: BoxDecoration(color:Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Recently Assigned',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('View All',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 16,fontWeight: FontWeight.bold),),
                      )

                    ],
                  ),
                  SizedBox(height: 40,),
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        height: myheight/2.5,
                        width: mywidth/1.10,
                        decoration: BoxDecoration(
                            boxShadow:[BoxShadow(blurRadius: 4.0,color: Colors.grey,offset: Offset(0,3.0))],color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('WebPage Design',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),

                            ),
                            SizedBox(height: 10,),
                             Padding(
                               padding: const EdgeInsets.only(left: 20.0),
                               child: Text("Lorem ipsum is simply dummy text of the printing and type setting industry",style: TextStyle(color: Colors.black,fontSize: 12,),),
                             ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ),
                            Row(

                              children: [
                                Column( crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text('Project Name:',style: TextStyle(color: Colors.black,fontSize: 14,),),
                                    ),
                                    SizedBox(height: 5,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text('WebPage Design',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0,top: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 50,width: 50,fit: BoxFit.fill,),
                                            ),
                                          ),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20.0),
                                                child: Text('ASSIGNE',style: TextStyle(color: Colors.black,fontSize: 14),),
                                              ),
                                              SizedBox(height: 5,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20.0),
                                                child: Text('ARUN KUMAR',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 14,),),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Column( crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text('Time Duration:',style: TextStyle(color: Colors.black,fontSize: 14,),),

                                    ),
                                    SizedBox(height: 5,),
                                    Row(

                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15.0),
                                          child: Icon(Icons.timer,color: Colors.black,size: 25,),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('10 A.M-5 P.M',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 14,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0,top: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 50,width: 50,fit: BoxFit.fill,),
                                            ),
                                          ),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20.0),
                                                child: Text('CREATED BY',style: TextStyle(color: Colors.black,fontSize: 14),),
                                              ),
                                              SizedBox(height: 5,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20.0),
                                                child: Text('ARUN KUMAR',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 14,),),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: -20,
                          left: 20,
                          child: Container(
                        height: 50,
                        width: mywidth/3,
                        decoration: BoxDecoration(color:HexColor('#0F46B3'),borderRadius: BorderRadius.all(Radius.circular(20.0))),
                            child: Center(child: Text('In process',style: TextStyle(color: Colors.white,fontSize: 20),)),
                      )),
                      Positioned(
                        left: 0,

                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0,bottom: 20.0),
                            child: Container(
                              height: myheight/3,
                              width: 3,
                              color: HexColor('#0F46B3'),
                            ),
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/employees/leave/leavestatus.dart';


class LeaveappliedSuccessfully extends StatefulWidget {
  const LeaveappliedSuccessfully({Key? key}) : super(key: key);

  @override
  _LeaveappliedSuccessfullyState createState() =>
      _LeaveappliedSuccessfullyState();
}

class _LeaveappliedSuccessfullyState extends State<LeaveappliedSuccessfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F0F4FD'),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: HexColor('#0F46B3'),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        title: Text('Leaves',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
        actions: [
          Icon(Icons.more_vert,)
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: HexColor('#0F46B3'),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
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
          SizedBox(height: 40,),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image:
                    AssetImage('assets/leavecard.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                  top: 90,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: [
                          Text(
                            'Leave Applied',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                color: HexColor('#0F46B3')),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Successfully',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                color: HexColor('#3DAB25')),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 60,
                            width:
                            MediaQuery.of(context).size.width / 1.8,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LeaveStatus()),
                                );
                              },
                              color: HexColor('#0F46B3'),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(30)),
                              child: Text(
                                "Check Status",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),



        ],
      ),
    );
  }
}

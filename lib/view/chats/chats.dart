import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/chats/chatscreen.dart';
class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: HexColor('#0F46B3'),
          title: Text('Chats',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          centerTitle: true,
          leading: IconButton(
            onPressed: (){

            },
            icon: Icon(
              Icons.menu,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width:  MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/14,
            color:  HexColor('#DCF4F9'),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('Groups(08)',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/7,
            width: MediaQuery.of(context).size.width,
            color: HexColor('#DCF4F9'),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(color:HexColor('#0F46B3'),
                          shape: BoxShape.circle
                        ),
                        child: Image(
                          image: AssetImage('assets/chataddicon.png'),
                          height: 10,
                          width: 10,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text('Create',style: TextStyle(color: Colors.black,fontSize: 13),)
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/7,
                  width: MediaQuery.of(context).size.width/1.3,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index)
                      {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children:<Widget> [
                              CircleAvatar(
                                radius: 25.0,
                                backgroundImage: AssetImage('assets/payment/profilepic.jpg',
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text('Vijay',style: TextStyle(color:Colors.black,fontSize: 13),),
                            ],
                          ),
                        );
                      }
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child:
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 12,
                      itemBuilder: (BuildContext context, int index)
                      {
                        return  InkWell(onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ChatScreen()),
                          );
                        },
                          child: Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 20.0,vertical: 5 ),
                            child: Column(
                              children: [

                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.0,
                                      backgroundImage: AssetImage('assets/payment/profilepic.jpg'),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'vijay',
                                          style: TextStyle(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Container(
                                          child: Text(
                                            'hii',
                                            style: TextStyle(
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      '10:30',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Divider(
                                    color: Colors.grey,
                                    thickness: 0.5,
                                  ),

                              ],
                            ),
                          ),
                        );

                      }

              ),
            ),
          ),
        ],
      ),
    );
  }
}

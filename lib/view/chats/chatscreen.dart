import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#E9F8FC'),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: HexColor('#0F46B3'),
          leading: Icon(
            Icons.arrow_back,color:Colors.white,
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('assets/payment/profilepic.jpg'),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Vijay',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text('Online',style: TextStyle(color: Colors.white,fontSize: 12),),

                  ]),
            ],
          ),
          actions: [
            Icon(Icons.call,color:Colors.white,),
            SizedBox(width: 10,),
            Icon(Icons.video_call,color:Colors.white,),
            SizedBox(width: 10,),
            Icon(Icons.more_vert,color:Colors.white,),
            SizedBox(width: 10,),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Expanded(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.sentiment_satisfied_alt_rounded)),
                    SizedBox(width: 5),
                    Expanded(
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          hintText: 'Type Message',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.mic_none_rounded,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.send_rounded,
                      color: Colors.grey,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

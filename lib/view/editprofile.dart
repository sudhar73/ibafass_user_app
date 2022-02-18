import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F0F4FD'),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Edit Profile',style: TextStyle(
            color: HexColor('#0F46B3'),fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(45.0),bottomLeft: Radius.circular(45.0)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,3.0),
                    blurRadius: 6,
                    color: Colors.grey.shade400,
                  )              ]
              ),

              child: Column(
                children: [
                  SizedBox(height: 10,),
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
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'UI Designer',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(

              width: MediaQuery.of(context).size.width/1.15,
              decoration: BoxDecoration(color: Colors.white,
               borderRadius: BorderRadius.all(Radius.circular(15.0)) ,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,3.0),
                      blurRadius: 6,
                      color: Colors.grey.shade400,
                    ) ]
                  ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('FullName:',style: TextStyle(fontSize: 16,color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: HexColor('#0F46B3'))
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(

              width: MediaQuery.of(context).size.width/1.15,
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)) ,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,3.0),
                      blurRadius: 6,
                      color: Colors.grey.shade400,
                    ) ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Phone Nummber:',style: TextStyle(fontSize: 16,color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#0F46B3'))
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width/1.15,
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)) ,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,3.0),
                      blurRadius: 6,
                      color: Colors.grey.shade400,
                    ) ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Email ID:',style: TextStyle(fontSize: 16,color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,),
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#0F46B3'))
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.15,
              child: RaisedButton(
                onPressed: () {},
                color: HexColor('#0F46B3'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  "Save Change",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

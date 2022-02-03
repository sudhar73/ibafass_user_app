import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class ApplyLeave extends StatefulWidget {
  const ApplyLeave({Key? key}) : super(key: key);

  @override
  _ApplyLeaveState createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {

  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: HexColor('#F0F4FD'),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: HexColor('#0F46B3'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0),bottomLeft: Radius.circular(40.0))),
          title: Text('Apply Leave',style: TextStyle(color: Colors.white),),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: myheight/25,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  print("Inside the Image");
                },
                child:CircleAvatar(
                  radius: 30,
                  child: ClipOval(
                    child: Image(
                      image: AssetImage('assets/payment/profilepic.jpg'),
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('leave Type:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                height: 60,
                width: mywidth/1.10,
                decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.grey,)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('From:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                height: 60,
                width: mywidth/1.10,
                decoration: BoxDecoration(
                    color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.calendar_today,color: Colors.grey,)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('To:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                height: 60,
                width: mywidth/1.10,
                decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.calendar_today,color: Colors.grey,)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Number of days:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                height: 60,
                width: mywidth/1.10,
                decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Remaining Leave:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                height: 60,
                width: mywidth/1.10,
                decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Leave Reason:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                height: 150,
                width: mywidth/1.10,
                decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.15,
                child: RaisedButton(
                  onPressed: () {

                  },
                  color: HexColor('#0F46B3'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}

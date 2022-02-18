import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: HexColor('#0F46B3'),
          actions: [
            Icon(Icons.more_vert),
          ],
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
              icon: Icon(Icons.arrow_back)),
          title: Text('AddEmployee',style:TextStyle(color: Colors.white),),

        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0))),
            width: mywidth,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('Name:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
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
                  child: Text('Email:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
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
                  child: Text('Password:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
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
                  child: Text('confirm password:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
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
                  child: Text('Phone Number:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
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
                  child: Text('employee ID:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
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
                  child: Text('Joining Date:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
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
                          suffixIcon: IconButton(onPressed: (){},
                            icon: Icon(Icons.calendar_today,color:Colors.black,),),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
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
                        "Submit Your Details",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
              ],
            )
          )
        ],),
      ),
    );
  }
}

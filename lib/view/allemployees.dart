import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/directory.dart';
import 'package:ibafass/view/employees/addemployee.dart';
import 'package:ibafass/view/employees/employerprofile.dart';

class AllEmployees extends StatefulWidget {
  const AllEmployees({Key? key}) : super(key: key);

  @override
  _AllEmployeesState createState() => _AllEmployeesState();
}

class _AllEmployeesState extends State<AllEmployees> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
            elevation: 0.0,
            backgroundColor:HexColor('#0F46B3'),
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
                },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            title:Text('All Employees',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          centerTitle: true,
        ),
      ),
      body:  SingleChildScrollView(
        child: Container(
          height: myheight,
          width: mywidth,
          decoration: BoxDecoration(color:HexColor('#DCF4F9'),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))),
          child: Column(children: [
            SizedBox(height: 30,),
            Center(
              child:Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),

                height: 60,
                width: MediaQuery.of(context).size.width/1.20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Employee ID or Name',

                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        suffixIcon: Container(
                          decoration: BoxDecoration( color: HexColor('E2E5FC'),borderRadius: BorderRadius.all(Radius.circular(10))),
                          height: 5,
                          width: 5,
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
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Employeprofile()),
                );},
              child: Container(
                height: 100,
                width: mywidth/1.20,
                decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: CircleAvatar(
                        radius: 30,
                        child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),

                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mani',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,),
                        Text('UI Designer',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: mywidth/1.20,
              decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: CircleAvatar(
                      radius: 30,
                      child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),

                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mani',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(width: 5,),
                      Text('UI Designer',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: mywidth/1.20,
              decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: CircleAvatar(
                      radius: 30,
                      child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),

                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mani',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(width: 5,),
                      Text('UI Designer',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),

            FloatingActionButton(
              child: Icon(Icons.add,size: 30,),
              backgroundColor: HexColor('#0F46B3'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddEmployee()),
                );
              },
            ),
          ],),
        ),
      )
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/employees/leave/leaveappliedsuccessfully.dart';
import 'package:ibafass/view/tasks.dart';
class Directory extends StatefulWidget {
  const Directory({Key? key}) : super(key: key);

  @override
  _DirectoryState createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#DCF4F9'),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
            elevation: 0.0,
            backgroundColor:HexColor('#0F46B3'),
            leading: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 25,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0,right: 20.0),
                child: Icon(Icons.notifications,color: Colors.white,size: 25,),
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
       body: SingleChildScrollView(
         child: Column(
           children: [
             SizedBox(
               height: 20,
             ),
             Center(
               child: Container(

                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
                 height: 100,
                 width: MediaQuery.of(context).size.width/1.20,
child: Row(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    SizedBox(width: 20,),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

          Text('DIRECTORY',style: TextStyle(fontSize:17,fontWeight:FontWeight.bold,color: HexColor('#0F46B3')),),
          SizedBox(height: 10,),
          Text('Number of employees:10',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 14),)
      ],
    ),
   Spacer(),
Padding( padding: EdgeInsets.all(25.0),
child:   FloatingActionButton(
  
    child: Icon(

        Icons.add,

        size: 20,

      ),

  
      backgroundColor: HexColor('#0F46B3'),
  
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LeaveappliedSuccessfully()),
        );
  
  
  }),
)
  ],
),
               ),
             ),
             SizedBox(
               height: 10,
             ),
             Center(
               child: Container(
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
                 height: 60,
                 width: MediaQuery.of(context).size.width/1.20,
child: TextField(

  decoration: InputDecoration(
    labelText: 'Employee Directory',
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
             SizedBox(
               height: 10,
             ),
             Center(
               child: InkWell(
                   onTap: () => Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Tasks()),
                   ),

                   child: Container(
                   decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
                   height: MediaQuery.of(context).size.height/5,
                   width: MediaQuery.of(context).size.width/1.20,
child: Row(
  children: [
    SizedBox(width: 20,),
    CircleAvatar(
      radius: 40 ,
      child: ClipOval(

          child: Image(
            image: AssetImage('assets/payment/profilepic.jpg'),
            fit: BoxFit.fill,
            height: 80,
            width: 80,
          ),
      ),
    ),
   SizedBox(
     width: 20,
   ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text('Manikandan',style: TextStyle(fontSize: 24,color: HexColor('#0F46B3'),fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text('UI designer',style: TextStyle(fontSize: 16,color: Colors.grey,),),
          SizedBox(height: 5,),
          Text('mani1995@gmail.com',style: TextStyle(fontSize: 16,color: Colors.grey,),),
          SizedBox(height: 5,),
          Text('+91 8610756781',style: TextStyle(fontSize: 16,color: Colors.grey,),),
      ],
    )
  ],
),
                 ),
               ),
             )
           ],
         ),
       ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
backgroundColor: HexColor('#0F46B3'),
          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image(

              image: AssetImage('assets/directory/drawericon.png'),
height: 8,            width: 8,
            ),
          ),
          actions: [
Icon(
  Icons.notifications,
  size: 35),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
radius: 23 ,
              child: ClipOval(

                child: Image(
                  image: AssetImage('assets/payment/profilepic.jpg'),
                  fit: BoxFit.fill,
                  height: 45,
                  width: 45,
                ),
              ),
           ),
            SizedBox(
              width: 5,
            ),
            Icon(
                Icons.arrow_drop_down,               size: 30),

          ],

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
    SizedBox(width: 10,),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

          Text('DIRECTORY',style: TextStyle(fontSize:20,fontWeight:FontWeight.bold,color: HexColor('#0F46B3')),),
          SizedBox(height: 10,),
          Text('Number of employees:10',style: TextStyle(color: Colors.black,fontSize: 19),)
      ],
    ),
   Spacer(),
Padding( padding: EdgeInsets.only(right: 10),
child:   FloatingActionButton(
  
    child: Icon(
  
      Icons.add,
  
      size: 25,
  
    ),
  
      backgroundColor: HexColor('#0F46B3'),
  
      onPressed: () {
  
  
  
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
focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    suffixIcon: IconButton(
      onPressed: (){},
      icon: Icon(Icons.search,color: Colors.black,)
    )
  ),
),
               ),
             ),
             SizedBox(
               height: 10,
             ),
             Center(
               child: Container(
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
                 height: 170,
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
          Text('UI designer',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text('mani1995@gmail.com',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text('+91 8610756781',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
      ],
    )
  ],
),
               ),
             )
           ],
         ),
       ),
    );
  }
}

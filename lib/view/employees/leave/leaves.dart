import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/employees/leave/applyleave.dart';
class Leaves extends StatefulWidget {
  const Leaves({Key? key}) : super(key: key);

  @override
  _LeavesState createState() => _LeavesState();
}

class _LeavesState extends State<Leaves> {
  @override
  Widget build(BuildContext context) {
    final myheight=MediaQuery.of(context).size.height;
    final mywidth =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#F0F4FD'),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
            title: Text('Leaves',style: TextStyle(fontWeight:FontWeight.bold,fontSize:20,color: Colors.black),),
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: myheight/25,
              ),
            ),
            centerTitle: true,
            )),
      body: Column(
        children: [
          Container(
            height: myheight/3.5,
            width: mywidth,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45.0),bottomRight: Radius.circular(45.0)
            )),
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(25.0))),
                height:myheight/6,
                width: mywidth/3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Annual Leave',style: TextStyle(fontSize: 17,color: Colors.black),),
                    SizedBox(height: 5,),
                    Text('14',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: HexColor('#76CDF3')),),
                  ],
                ),
              ),
              Container(
                height:myheight/6,
                width: mywidth/3,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(25.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Medical Leave',style: TextStyle(fontSize: 17,color: Colors.black),),
                    SizedBox(height: 5,),
                    Text('03',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: HexColor('#F3A63E')),),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(25.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Other Leave',style: TextStyle(fontSize: 17,color: Colors.black),),
                    SizedBox(height: 5,),
                    Text('06',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: HexColor('#CA55CA')),),
                  ],
                ),
                height:myheight/6,
                width: mywidth/3,
              ),
              Container(
                height:myheight/6,
                width: mywidth/3,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(25.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Remaining',style: TextStyle(fontSize: 17,color: Colors.black),),
                    Text('Leave',style: TextStyle(fontSize: 17,color: Colors.black),),
                    SizedBox(height: 5,),
                    Text('05',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: HexColor('#2C93C0')),),
                  ],
                ),
              ),

            ],
          ),
          SizedBox(height: 20,),
          FloatingActionButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ApplyLeave()),
            );

          },
            backgroundColor: HexColor('#0F46B3'),
            child: Icon(
              Icons.add,
              
            ),
          )
        ],
      ),
    );
  }
}

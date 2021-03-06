

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class ProjectDetails extends StatefulWidget {
  const ProjectDetails({Key? key}) : super(key: key);

  @override
  _ProjectDetailsState createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
    appBar:PreferredSize(
    preferredSize: Size.fromHeight(65.0),
    child: AppBar(
    elevation: 0.0,
    backgroundColor: HexColor('#0F46B3'),
    title: Text('Project Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
        icon: Icon(Icons.arrow_back,color: Colors.white,)),
    actions: [
    IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
    ],
    ),),
      body: SingleChildScrollView(
        child:         Container(
            decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(40.0),topLeft: Radius.circular(40.0))),
            width: MediaQuery.of(context).size.width,



            child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

                SizedBox(height: 30,),

        Padding(

          padding: const EdgeInsets.only(left: 20.0),

          child:   Text('Web Design',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),

        ),

        SizedBox(height: 5),

        Row(

          children: [



          Padding(

        padding: const EdgeInsets.only(left: 20.0),

        child: Text(' OS IT COMPANY',style: TextStyle(fontSize:17,color:HexColor('#595959')),),

          ),
        SizedBox(width: 30),
            Icon(Icons.work_outline,color: HexColor('#9C59D2'),size: 15,),
             SizedBox(width: 5,),
             Text('10 Task',style: TextStyle(fontSize: 12,color: HexColor('#9C59D2')),),
          ],

        ),

                SizedBox(height: 20,),

                Padding(

                  padding: const EdgeInsets.only(left: 20.0),

                  child: Text('Goals',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),

                ),

                SizedBox(height: 10,),

                Padding(

                  padding: const EdgeInsets.only(left:20.0,right: 20.0),

                  child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. When an unknown printer took a galley of type and scrambled it...',style: TextStyle(fontSize: 16,color: HexColor('#595959')),),

                ),

                Padding(

                  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),

                  child: Divider(

                    thickness: 1,

                    color: Colors.grey,

                  ),

                ),

                Padding(

                  padding: const EdgeInsets.only(left: 20.0),

                  child: Text('Deadline:',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

                ),

                SizedBox(height: 5,),

                Row(

                  children: [

                    SizedBox(width: 20,),

                    Icon(Icons.timer,color:HexColor('#9C59D2'),size: 30,),

                    SizedBox(width: 10,),

                    Text('19 Apr 2021',style: TextStyle(color: HexColor('#9C59D2'),fontSize: 18),),

                  ],

                ),

                Padding(

                  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),

                  child: Divider(

                    thickness: 1,

                    color: Colors.grey,

                  ),

                ),

                Padding(

                  padding: const EdgeInsets.only(left: 20.0),

                  child: Text('Project Leader:',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

                ),

                Padding(

                  padding: const EdgeInsets.only(left: 20.0,top: 15.0),

                  child: CircleAvatar(

                    radius: 30,

                    child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),



                    ),

                  ),

                ),

                Padding(

                  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),

                  child: Divider(

                    thickness: 1,

                    color: Colors.grey,

                  ),

                ),

                Padding(

                  padding: const EdgeInsets.only(left: 20.0,),

                  child: Text('Team Members:',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

                ),

                SizedBox(height: 15,),

                Row(

                  children: [

                    SizedBox(width: 20,),

                    CircleAvatar(

                      radius: 30,

                      child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),

                      ),

                    ),

                    SizedBox(width: 8,),

                    CircleAvatar(

                      radius: 30,

                      child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),

                      ),

                    ),

                    SizedBox(width: 8,),

                    CircleAvatar(

                      radius: 30,

                      child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,)

                      ),

                    ),

                    SizedBox(width: 8,),

                    CircleAvatar(

                      radius: 30,

                      child:ClipOval(child: Image(image: AssetImage('assets/directory/profilepicture.jpg'),height: 60,width: 60,fit: BoxFit.fill,),



                      ),

                    ),
                    SizedBox(width: 8,),
                    SizedBox(
                      height: 40.0,
                      width: 40.0,
                      child: FittedBox(
                        child: FloatingActionButton(
                          backgroundColor: HexColor('#9C59D2'),
                          child: Icon(Icons.add),
                          onPressed: () {},
                        ),
                      ),
                    ),

                  ],

                ),

                Padding(

                  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),

                  child: Divider(

                    thickness: 1,

                    color: Colors.grey,

                  ),

                ),

                Padding(

                  padding: const EdgeInsets.only(left: 20.0,),

                  child: Text('Progress :',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 20.0),
                child: CircularPercentIndicator(radius: 40.0,
                  backgroundColor: HexColor('#F8F1FF'),
                  progressColor: HexColor('#9C59D2'),
                  lineWidth: 5.0,
                  percent: 0.5,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text('50%',style: TextStyle(color: Colors.black,fontSize: 14),),
                ),
              ),
              SizedBox(height: 30,),
            ],
            ),
        ),
      )
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/projectdetails.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: HexColor('#0F46B3'),
          title: Text('Project',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          centerTitle: true,
          leading: Icon(Icons.arrow_back,color: Colors.white,),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
          ],
        ),),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height/1,
          width: MediaQuery.of(context).size.width,

          decoration: BoxDecoration(
            color: HexColor('#DCF4F9'),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0)),),
          child: Column(

            children: [
              SizedBox(height: 20,),
              Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),

                height: 60,
                width: MediaQuery.of(context).size.width/1.20,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Project Name',
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
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProjectDetails()),
                  );

                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.8,
                  width: MediaQuery.of(context).size.width/1.20,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              decoration: BoxDecoration( color: HexColor('#9C59D2'),
                                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
                              height: 30,
                              width: 120,

                              child: Center(child: Text('Research Analyst',style: TextStyle(color: Colors.white,fontSize: 13),)),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Web Design',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 18)),
                              SizedBox(height: 5,),
                              Text('Ocean software',style: TextStyle(color: Colors.black,fontSize: 14)),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0,right: 20.0),
                            child: CircularPercentIndicator(radius: 40.0,
                              backgroundColor: HexColor('#F8F1FF'),
                              progressColor: HexColor('#9C59D2'),
                              lineWidth: 5.0,
                              percent: 0.5,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Text('50%',style: TextStyle(color: Colors.black,fontSize: 14),),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Our Website company related services are...',style: TextStyle(color: Colors.grey,fontSize: 12),),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(Icons.timer),
                          SizedBox(width: 4,),
                          Text('19 apr 2021',style: TextStyle(fontSize:13,color: HexColor('#9C59D2')),),
                          Spacer(),
                          Icon(Icons.work_outline,
                            size: 20,),
                          SizedBox(width: 4,),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text('10 Task',style: TextStyle(fontSize:13,color: HexColor('#9C59D2')),),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height/3.8,
                width: MediaQuery.of(context).size.width/1.20,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            decoration: BoxDecoration( color: HexColor('#17D213'),
                                borderRadius: BorderRadius.all(Radius.circular(5.0))),
                            height: 30,
                            width: 120,

                            child: Center(child: Text('Research Analyst',style: TextStyle(color: Colors.white,fontSize: 13),)),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Project Management',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 18)),
                            SizedBox(height: 5,),
                            Text('Ocean software',style: TextStyle(color: Colors.black,fontSize: 14)),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0,right: 20.0),
                          child: CircularPercentIndicator(radius: 50.0,
                            backgroundColor: HexColor('#E4FFF5'),
                            progressColor: HexColor('#17D213'),
                            lineWidth: 5.0,
                            percent: 0.75,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: Text('75%',style: TextStyle(color: Colors.black,fontSize: 14),),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Our Website company related services are...',style: TextStyle(color: Colors.grey,fontSize: 12),),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.timer),
                        SizedBox(width: 4,),
                        Text('21 apr 2021',style: TextStyle(fontSize:13,color: HexColor('#17D213')),),
                        Spacer(),
                        Icon(Icons.work_outline,
                          size: 20,),
                        SizedBox(width: 4,),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text('12 Task',style: TextStyle(fontSize:13,color: HexColor('#17D213')),),
                        ),

                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                height: MediaQuery.of(context).size.height/3.8,
                width: MediaQuery.of(context).size.width/1.20,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            decoration: BoxDecoration( color: HexColor('#DF3535'),
                                borderRadius: BorderRadius.all(Radius.circular(5.0))),
                            height: 30,
                            width: 120,

                            child: Center(child: Text('Research Analyst',style: TextStyle(color: Colors.white,fontSize: 13),)),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Video calling App',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 18)),
                            SizedBox(height: 5,),
                            Text('Ocean software',style: TextStyle(color: Colors.black,fontSize: 14)),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0,right: 20.0),
                          child: CircularPercentIndicator(radius: 50.0,
                            backgroundColor: HexColor('#F9D6D6'),
                            progressColor: HexColor('#DF3535'),
                            lineWidth: 5.0,
                            percent: 0.75,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: Text('75%',style: TextStyle(color: Colors.black,fontSize: 14),),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Our Website company related services are...',style: TextStyle(color: Colors.grey,fontSize: 12),),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.timer),
                        SizedBox(width: 4,),
                        Text('19 apr 2021',style: TextStyle(fontSize:13,color: HexColor('#DF3535')),),
                        Spacer(),
                        Icon(Icons.work_outline,
                          size: 20,),
                        SizedBox(width: 4,),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text('08 Task',style: TextStyle(fontSize:13,color: HexColor('#DF3535')),),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

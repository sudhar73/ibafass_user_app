import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class SkillMatrixTraining extends StatefulWidget {

  const SkillMatrixTraining({Key? key}) : super(key: key);

  @override
  _SkillMatrixTrainingState createState() => _SkillMatrixTrainingState();
}

class _SkillMatrixTrainingState extends State<SkillMatrixTraining> {
  final List  _items =[
   data1(),
    data2(),
    data3(),
  ];
  @override
  Widget build(BuildContext context) {
    final myheight=MediaQuery.of(context).size.height;
    final mywidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: HexColor('#0F46B3'),
          title: Text('Skill Matrix Training',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          centerTitle: true,
          leading: Icon(Icons.arrow_back,color: Colors.white,),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration( color: Colors.white,borderRadius:
          BorderRadius.only(topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Employee Name :',style: TextStyle(color: HexColor('#0F46B3'),
                    fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,
                      boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(13.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Employee No :',style: TextStyle(color: HexColor('#0F46B3'),
                    fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,
                      boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(13.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Department :',style: TextStyle(color: HexColor('#0F46B3'),
                    fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,
                      boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(13.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){},
                              icon: Icon(Icons.arrow_drop_down,color: Colors.black,)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Designation :',style: TextStyle(color: HexColor('#0F46B3'),
                    fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,
                      boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(13.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){},
                              icon: Icon(Icons.arrow_drop_down,color: Colors.black,)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: myheight/1.7,
                  child: CarouselSlider.builder(
                      unlimitedMode: false,
                      slideBuilder: (index) {
                        return Container(
                          decoration: BoxDecoration(  color:HexColor('#B6F2FF'),
                              borderRadius: BorderRadius.all(Radius.circular(15.0))),
                          child: _items[index],
                        );
                      },
                      slideTransform: DefaultTransform(),
                      slideIndicator: CircularSlideIndicator(
                        itemSpacing: 14.0,
                        indicatorRadius: 5,
                        indicatorBackgroundColor: HexColor('#9EA3B4'),
                        currentIndicatorColor: HexColor('#0F46B3'),
                        padding: EdgeInsets.only(bottom: 30),
                      ),
                      itemCount:_items.length),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Total Required :',style: TextStyle(color: HexColor('#0F46B3'),
                    fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,
                      boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(13.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Total Completed :',style: TextStyle(color: HexColor('#0F46B3'),
                    fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,
                      boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(13.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Pending :',style: TextStyle(color: HexColor('#0F46B3'),
                    fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,
                      boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(13.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Competency :',style: TextStyle(color: HexColor('#0F46B3'),
                    fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,
                      boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(13.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
class data1 extends StatefulWidget {
  const data1({Key? key}) : super(key: key);

  @override
  _data1State createState() => _data1State();
}

class _data1State extends State<data1> {
  @override
  Widget build(BuildContext context) {
    final myheight=MediaQuery.of(context).size.height;
    final mywidth=MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height:myheight*0.04,),
            Text('Health & Safety',style: TextStyle(color: HexColor('#0F46B3'),
            fontSize: 19,fontWeight: FontWeight.bold),),
        SizedBox(height:myheight*0.03,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height:myheight*0.02,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height:myheight*0.02,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height:myheight*0.02,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
          ],

    );
  }
}
class data2 extends StatefulWidget {
  const data2({Key? key}) : super(key: key);

  @override
  _data2State createState() => _data2State();
}

class _data2State extends State<data2> {
  @override
  Widget build(BuildContext context) {
    final myheight=MediaQuery.of(context).size.height;
    final mywidth=MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height:myheight*0.04,),
        Text('Health & Safety',style: TextStyle(color: HexColor('#0F46B3'),
            fontSize: 19,fontWeight: FontWeight.bold),),
        SizedBox(height:myheight*0.03,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height:myheight*0.02,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height:myheight*0.02,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height:myheight*0.02,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height:myheight*0.02,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),

              ),
            )
          ],
        ),
      ],
    );
  }
}

class data3 extends StatefulWidget {
  const data3({Key? key}) : super(key: key);

  @override
  _data3State createState() => _data3State();
}

class _data3State extends State<data3> {
  @override
  Widget build(BuildContext context) {
    final myheight=MediaQuery.of(context).size.height;
    final mywidth=MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height:myheight*0.04,),
        Text('Health & Safety',style: TextStyle(color: HexColor('#0F46B3'),
            fontSize: 19,fontWeight: FontWeight.bold),),
        SizedBox(height:myheight*0.03,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height:myheight*0.02,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height:myheight*0.02,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height:myheight*0.02,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height:myheight*0.02,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Manual Handling',style: TextStyle(color:Colors.black,
                  fontSize: 15),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(  color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),


      ],

    );
  }
}




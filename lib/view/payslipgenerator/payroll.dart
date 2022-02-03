import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class Payroll extends StatefulWidget {
  const Payroll({Key? key}) : super(key: key);

  @override
  _PayrollState createState() => _PayrollState();
}

class _PayrollState extends State<Payroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F0F4FD'),
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 3,
          child: Column(children: [
            Container(
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(40.0),bottomLeft: Radius.circular(40.0)),
              ),
              height: MediaQuery.of(context).size.height/3.5,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Icon(
                              Icons.arrow_back_sharp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Center(
                            child: Text(
                              'Salary Details',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.settings,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:10),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CircleAvatar(
                            radius: 35,
                            child:ClipOval(
                              child: Image(
                                image: AssetImage('assets/directory/profilepicture.jpg'),
                                height: 70,
                                width: 70,
                              ),
                            )
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Welcome Mani',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: HexColor('#0F46B3')),),
                          Text('Good Morning',style: TextStyle(fontSize: 14,color: Colors.black),)
                        ],
                      )
                    ],

                  )

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: Scaffold(
                  backgroundColor: HexColor('#F0F4FD'),
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    centerTitle: true,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0),)),
                    backgroundColor: Colors.white,
                    title: TabBar(

                      indicator: UnderlineTabIndicator( borderSide: BorderSide(color: HexColor('#0F46B3'),width: 3.0),
                          insets: EdgeInsets.only(left: 15,right: 15)
                      ),
                      tabs: [
                        Tab(child:Text('Addition',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black),)),
                        Tab(child:Text('Overtime',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black),)),
                        Tab(child:Text('Deduction',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black),)),
                      ],
                    ),
                  ),
                  body: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height/2,
                          width: MediaQuery.of(context).size.width,

                          decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15.0),)),
                          child: TabBarView(
                            children: [
                              Addition(),
                              Overtime(),
                              Deduction()
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],),
        ),
      ),
    );
  }
  Addition(){
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.0,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('Name:',style: TextStyle(fontSize:18,color: Colors.black,),),
        ),
        SizedBox(height: 10,),
        Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('Category:',style: TextStyle(fontSize:18,color: Colors.black,),),
        ),
        SizedBox(height: 10,),
        Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('Unit Amount:',style: TextStyle(fontSize:18,color: Colors.black,),),
        ),
        SizedBox(height: 10,),
        Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
  Overtime(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.0,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('Name:',style: TextStyle(fontSize:18,color: Colors.black,),),
        ),
        SizedBox(height: 10,),
        Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('Rate Type:',style: TextStyle(fontSize:18,color: Colors.black,),),
        ),
        SizedBox(height: 10,),
        Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('Rate Amount:',style: TextStyle(fontSize:18,color: Colors.black,),),
        ),
        SizedBox(height: 10,),
        Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
  Deduction(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.0,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('Name:',style: TextStyle(fontSize:18,color: Colors.black,),),
        ),
        SizedBox(height: 10,),
        Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('Unit amount:',style: TextStyle(fontSize:18,color: Colors.black,),),
        ),
        SizedBox(height: 10,),
        Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: HexColor('#567DC9')),
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}

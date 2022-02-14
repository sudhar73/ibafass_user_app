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
      appBar:AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('Payroll',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings_outlined,color: Colors.black,)),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(40.0),bottomLeft: Radius.circular(40.0)),
              ),

              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 20),
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Welcome Mani',
                              style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: HexColor('#0F46B3')),),
                            SizedBox(height: 5,),
                            Text('Good Morning',style: TextStyle(fontSize: 14,color: Colors.black),)
                          ],
                        ),
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
                  appBar:
                  PreferredSize(
                    preferredSize:Size.fromHeight(70),

                    child: AppBar(
                      automaticallyImplyLeading: false,
                      centerTitle: true,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0),)),
                      backgroundColor: Colors.white,
                      title: TabBar(
                        unselectedLabelColor: Colors.black,
                        labelColor:HexColor('#0F46B3') ,
                        indicator: UnderlineTabIndicator( borderSide: BorderSide(color: HexColor('#0F46B3'),width: 3.0),
                            insets: EdgeInsets.only(left: 15,right: 15)
                        ),
                        tabs: [
                          Tab(child:Text('Addition',style: TextStyle(fontSize:16,fontWeight:FontWeight.bold,),)),
                          Tab(child:Text('Overtime',style: TextStyle(fontSize:16,fontWeight:FontWeight.bold,),)),
                          Tab(child:Text('Deduction',style: TextStyle(fontSize:16,fontWeight:FontWeight.bold,),)),
                        ],
                      ),
                    ),
                  ),
                  body: SingleChildScrollView(
                    child: Column(
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
        SizedBox(height: 30.0,),
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
                suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
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
                suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
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
        SizedBox(height: 30.0,),
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
                suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
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
                suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
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
        SizedBox(height: 30.0,),
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
                suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
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

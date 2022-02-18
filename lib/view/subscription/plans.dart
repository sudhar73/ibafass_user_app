import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:ibafass/view/subscription/subscription.dart';

class SubscriptionPlans extends StatefulWidget {
  const SubscriptionPlans({Key? key}) : super(key: key);

  @override
  _SubscriptionPlansState createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPlans>  with TickerProviderStateMixin   {
  @override
  Widget build(BuildContext context) {

    TabController _tabcontroller = new TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: HexColor('#0F46B3'),
          title: Text('Subscription',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          centerTitle: true,
          leading: IconButton(
            onPressed: (){

                Navigator.pop(context);

            },
              icon: Icon(Icons.arrow_back,color: Colors.white,)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color:HexColor('#DCF4F9'),
            borderRadius: BorderRadius.only
              (topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))),
        child: Column(
          children: [
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Container(
                  height: MediaQuery.of(context).size.height/10,
                   decoration:BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: DefaultTabController(
                    length: 2,
                    child: TabBar(
                      unselectedLabelColor:HexColor('#FF6600'),
                      indicator: BoxDecoration(
                          color:HexColor('#FF6600'),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      controller: _tabcontroller,
                      tabs: [
                      Tab(
                        child: Text('Monthly Plan'),
                      ),
                      Tab(
                        child: Text('Annual Leave')
                      )
                    ],

                    ),
                  ),
              ),
               ),
            Expanded(
              child: DefaultTabController(
                initialIndex: 0,
                length: 2,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: HexColor('#DCF4F9'),
                  child: TabBarView(
                    controller: _tabcontroller,
                    children: [
                      Subscription(),
                    Text('jhghgbhj')
                  ],
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

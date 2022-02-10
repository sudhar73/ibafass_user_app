import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/payment/payment.dart';

class Subscription extends StatefulWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  int _currentIndex=0;
  List cardList= [
    data1(),
    data2(),
    data3(),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    final myheight=MediaQuery.of(context).size.height;
    final mywidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#DCF4F9'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  height: MediaQuery.of(context).size.height/1.6,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                 ),
                items: cardList.map((card){
                  return Builder(
                      builder:(BuildContext context){
                        return Container(
                          height:MediaQuery.of(context).size.height/2 ,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          child: card,
                        );
                      }
                  );
                }).toList(),

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(cardList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(color:Colors.white,
                    boxShadow:[BoxShadow(blurRadius: 6,offset: Offset(0,3.0),color: Colors.grey)],
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                width: MediaQuery.of(context).size.width/1.20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Plan Transactions:',style:
                      TextStyle(color:Colors.black,fontSize: 21,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Plan:',style:
                      TextStyle(color:Colors.grey,fontSize: 16,),),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Container(
                        height: 60,
                        width: mywidth/1.4,
                        decoration: BoxDecoration(color:Colors.white,
                            boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                            borderRadius: BorderRadius.all(Radius.circular(30.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: (){},
                                  icon: Icon(Icons.arrow_drop_down,color:Colors.black,),),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Users :',style:
                      TextStyle(color:Colors.grey,fontSize: 16,),),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Container(
                        height: 60,
                        width: mywidth/1.4,
                        decoration: BoxDecoration(color:Colors.white,
                            boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                            borderRadius: BorderRadius.all(Radius.circular(30.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: (){},
                                  icon: Icon(Icons.arrow_drop_down,color:Colors.black,),),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Plan Duration :',style:
                      TextStyle(color:Colors.grey,fontSize: 16,),),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Container(
                        height: 60,
                        width: mywidth/1.4,
                        decoration: BoxDecoration(color:Colors.white,
                            boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                            borderRadius: BorderRadius.all(Radius.circular(30.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: (){},
                                  icon: Icon(Icons.arrow_drop_down,color:Colors.black,),),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Start Date :',style:
                      TextStyle(color:Colors.grey,fontSize: 16,),),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Container(
                        height: 60,
                        width: mywidth/1.4,
                        decoration: BoxDecoration(color:Colors.white,
                            boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                            borderRadius: BorderRadius.all(Radius.circular(30.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: (){},
                                  icon: Icon(Icons.calendar_today,color:Colors.black,),),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('End Date :',style:
                      TextStyle(color:Colors.grey,fontSize: 16,),),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Container(
                        height: 60,
                        width: mywidth/1.4,
                        decoration: BoxDecoration(color:Colors.white,
                            boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                            borderRadius: BorderRadius.all(Radius.circular(30.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: (){},
                                  icon: Icon(Icons.calendar_today,color:Colors.black,),),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Amount :',style:
                      TextStyle(color:Colors.grey,fontSize: 16,),),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Container(
                        height: 60,
                        width: mywidth/1.4,
                        decoration: BoxDecoration(color:Colors.white,
                            boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                            borderRadius: BorderRadius.all(Radius.circular(30.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: (){},
                                  icon: Icon(Icons.arrow_drop_down,color:Colors.black,),),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width / 1.4,
                        decoration: BoxDecoration(
                            boxShadow:[BoxShadow(blurRadius: 6,offset: Offset(0,3.0),color:HexColor('#FF6600'),)],
                            borderRadius: BorderRadius.all(Radius.circular(30.0))),
                        child: RaisedButton(
                          onPressed: () {
                          },
                          color: HexColor('#FF6600'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            "Change Plan",
                            style: TextStyle(fontSize: 18, color:Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),

              ),
            ),
          ],
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
    final mywidth=MediaQuery.of(context).size..width;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: myheight*0.06,),
          Center(child: Text('Standard',
            style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),)),
          SizedBox(height: myheight*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
                Text('10\$ ',
                style: TextStyle(color:HexColor('#FF6600'),fontSize: 50,fontWeight: FontWeight.bold),),
              Text('/month',
                style: TextStyle(color:HexColor('#FF6600'),fontSize: 20,),),
              ],
          ),
          SizedBox(height: myheight*0.01,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
                children: [
                  Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                  SizedBox(width: 10,),
                  Text('1 user',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                ]),
          ),
          SizedBox(height: myheight*0.01,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
                children: [
                  Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                  SizedBox(width: 10,),
                  Text('5 Projects',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                ]),
          ),
          SizedBox(height: myheight*0.01,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
                children: [
                  Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                  SizedBox(width: 10,),
                  Text('5 GB Storage',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                ]),
          ),
          SizedBox(height: myheight*0.01,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
                children: [
                  Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                  SizedBox(width: 10,),
                  Text('Unlimited Message',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                ]),
          ),
          SizedBox(height: 30,),
          Center(
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.6,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Payment()),
                  );
                },
                color: HexColor('#069914'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Current Plan',
                  style:
                  TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      )
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
    final mywidth=MediaQuery.of(context).size..width;
    return  Container(
        decoration: BoxDecoration(
            color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                color: HexColor('#FFDF00'),
                height: MediaQuery.of(context).size.height/20,
                width: MediaQuery.of(context).size.width/2.5,
                child:Center(
                  child: Text('Most Popular',
                    style: TextStyle(color:Colors.black,fontSize: 13,),),
                ),
              ),
            ),
            SizedBox(height: myheight*0.03,),
            Center(child: Text('Professional',
              style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),)),
            SizedBox(height: myheight*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('25\$ ',
                  style: TextStyle(color:HexColor('#FF6600'),fontSize: 50,fontWeight: FontWeight.bold),),
                Text('/month',
                  style: TextStyle(color:HexColor('#FF6600'),fontSize: 20,),),
              ],
            ),
            SizedBox(height: myheight*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                  children: [
                    Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                    SizedBox(width: 10,),
                    Text('30 user',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                  ]),
            ),
            SizedBox(height: myheight*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                  children: [
                    Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                    SizedBox(width: 10,),
                    Text('50 Projects',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                  ]),
            ),
            SizedBox(height: myheight*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                  children: [
                    Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                    SizedBox(width: 10,),
                    Text('100 GB Storage',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                  ]),
            ),
            SizedBox(height: myheight*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                  children: [
                    Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                    SizedBox(width: 10,),
                    Text('Unlimited Message',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                  ]),
            ),
            SizedBox(height: myheight*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                  children: [
                    Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                    SizedBox(width: 10,),
                    Text('24/7 Customer Support',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                  ]),
            ),
            SizedBox(height: myheight*0.03,),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.6,
                child: RaisedButton(
                  onPressed: () {},
                  color: HexColor('#F8F8F8'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('Upgrade',
                    style:
                    TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        )
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
    final mywidth=MediaQuery.of(context).size..width;
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: myheight*0.05,),
            Center(child: Text('Enterprise',
              style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),)),
            SizedBox(height: myheight*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('40\$ ',
                  style: TextStyle(color:HexColor('#FF6600'),fontSize: 50,fontWeight: FontWeight.bold),),
                Text('/month',
                  style: TextStyle(color:HexColor('#FF6600'),fontSize: 20,),),
              ],
            ),
            SizedBox(height: myheight*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                  children: [
                    Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                    SizedBox(width: 10,),
                    Text('Unlimited Users',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                  ]),
            ),
            SizedBox(height: myheight*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                  children: [
                    Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                    SizedBox(width: 10,),
                    Text('Unlimited Projects',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                  ]),
            ),
            SizedBox(height: myheight*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                  children: [
                    Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                    SizedBox(width: 10,),
                    Text('500 GB Storage',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                  ]),
            ),
            SizedBox(height: myheight*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                  children: [
                    Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                    SizedBox(width: 10,),
                    Text('Unlimited Message',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                  ]),
            ),
            SizedBox(height: myheight*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                  children: [
                    Icon(Icons.done,color:HexColor('00DC25'),size: 20,),
                    SizedBox(width: 10,),
                    Text('24/7 Customer Support',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                  ]),
            ),
            SizedBox(height: myheight*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                  children: [
                    Icon(Icons.done,color:HexColor('00DC25'),size:20,),
                    SizedBox(width: 10,),
                    Text('Voice & Video Call',style: TextStyle(color:HexColor('#FF6600'),fontSize: 16,fontWeight: FontWeight.bold),),
                  ]),
            ),
            SizedBox(height: myheight*0.04,),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.6,
                child: RaisedButton(
                  onPressed: () {},
                  color: HexColor('#F8F8F8'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('Upgrade',
                    style:
                    TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

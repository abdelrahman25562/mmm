import 'package:flutter/material.dart';

import 'Complete_order.dart';
class check_out1 extends StatefulWidget {
  @override
  _check_out1State createState() => _check_out1State();
}

class _check_out1State extends State<check_out1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.arrow_back,size: 35.0,),
                      SizedBox(width: MediaQuery.of(context).size.width/50,),
                      Text('Checkout',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                      SizedBox(width: MediaQuery.of(context).size.width/3+40.0,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('Arrival time',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      SizedBox(width: MediaQuery.of(context).size.width/3+40.0,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Radio(value: 1,
              activeColor: Colors.green,
              ),
              SizedBox(width: 5.0,),
              Text('As soon as possible (22-44 min)',style: TextStyle(fontSize: 17.0),)
            ],
          ),
          Row(
            children: <Widget>[
              Radio(value: 1,
                activeColor: Colors.green,
              ),
              SizedBox(width: 5.0,),
              Text('Schedule for later',style: TextStyle(fontSize: 17.0),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('Payment method',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      SizedBox(width: MediaQuery.of(context).size.width/3+40.0,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Radio(value: 1,
                activeColor: Colors.green,
              ),
              SizedBox(width: 5.0,),
              Text('Cash',style: TextStyle(fontSize: 17.0),)
            ],
          ),
          Row(
            children: <Widget>[
              Radio(value: 1,
                activeColor: Colors.green,
              ),
              SizedBox(width: 5.0,),
              Text('Payment Method',style: TextStyle(fontSize: 17.0),)
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height/100,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text('Promocode',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffF0F4F9),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),

              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type the code'
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/25,child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0,),
                child: Text('Delivery fees', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width-155.0,),
              Text('15 KD',style: TextStyle(fontSize: 15.0),)
            ],

          ),),
          SizedBox(height: MediaQuery.of(context).size.height/25,child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0,),
                child: Text('Discount', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width-127.0,),
              Text('15 KD',style: TextStyle(fontSize: 15.0),)
            ],

          ),),
          SizedBox(height: MediaQuery.of(context).size.height/25,child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0,),
                child: Text('Subtotal', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width -125.0,),
              Text('15 KD',style: TextStyle(fontSize: 15.0),)
            ],

          ),),
          SizedBox(height: MediaQuery.of(context).size.height/5,),
          Padding(
            padding: const EdgeInsets.only(right: 15.0,left: 15.0),
            child: Container(
                height: MediaQuery.of(context).size.height/14,
                child: InkWell(
                  child: RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Complete()));},color: Color(0xffEA9307),child: Text('Confirm order',style: TextStyle(color: Colors.white,fontSize: 22.0),),shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      side: BorderSide(color: Colors.orange)
                  ),),
                )
            ),

          ),
        ],
      ),
    );
  }
}

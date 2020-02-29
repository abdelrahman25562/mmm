import 'package:flutter/material.dart';

import 'Check_out1.dart';
class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
          Divider(height: 1.0,color: Colors.grey,),
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
                    hintText: 'Almaadi, Ahmed Saad 21'
                ),
              ),
            ),
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
                    hintText: 'Address nickname'
                ),
              ),
            ),
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
                    hintText: 'Street'
                ),
              ),
            ),
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
                    hintText: 'Building'
                ),
              ),
            ),
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
                    hintText: 'Apartment number'
                ),
              ),
            ),
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
                    hintText: 'Mobile number'
                ),
              ),
            ),
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
                    hintText: 'Additional details (optional)'
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
          SizedBox(height: MediaQuery.of(context).size.height/50,),
          Padding(
            padding: const EdgeInsets.only(right: 15.0,left: 15.0),
            child: Container(
                height: MediaQuery.of(context).size.height/14,
                child: InkWell(
                  child: RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>check_out1()));},color: Color(0xffEA9307),child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: 22.0),),shape: RoundedRectangleBorder(
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

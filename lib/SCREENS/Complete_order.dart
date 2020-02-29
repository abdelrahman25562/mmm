import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'favourite.dart';
class Complete extends StatefulWidget {
  @override
  _CompleteState createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height/2,),
          Center(child: Text('Order is placed',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black),)),

          Padding(padding: EdgeInsets.all(10.0),child: Center(child: Text('Your order has been successfully placed',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.grey),))),

          SizedBox(height: MediaQuery.of(context).size.height/5,),
          Text('Changed your mind? Cancel order',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.grey),),
          SizedBox(height: MediaQuery.of(context).size.height/50,),
          Padding(
            padding: const EdgeInsets.only(right: 10.0,left: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/15,
                child: InkWell(
                  child: RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>favourite()));},color: Color(0xffEA9307),child: Text('Track order',style: TextStyle(color: Colors.white,fontSize: 22.0),),shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      side: BorderSide(color: Colors.orange)
                  ),),
                )
            ),

          ),
        ],
      )
    );
  }
}

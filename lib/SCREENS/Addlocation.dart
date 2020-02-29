import 'package:flutter/material.dart';
import 'package:mmm/SCREENS/home.dart';
class Addlocation extends StatefulWidget {
  static final String route = "Addlocation";
  @override
  _AddlocationState createState() => _AddlocationState();
}

class _AddlocationState extends State<Addlocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: MediaQuery.of(context).size.width/50,),
                    Text('Add location',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
SizedBox(height: MediaQuery.of(context).size.height/6,)
                  ],
                ),
              ),
            
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Location',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
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
                    hintText: 'EX: Almaadi'
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height/14,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.orangeAccent,width: 3.0),
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.all(Radius.circular(25.0))
              ),
              child: Center(child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
              },child: Text('Add Location',style: TextStyle(color: Colors.white,fontSize: 22.0,fontWeight: FontWeight.bold),))),
            ),
          ),
        ],

      ),
      ),
    );
  }
}

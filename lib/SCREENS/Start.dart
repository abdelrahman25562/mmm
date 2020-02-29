import 'package:flutter/material.dart';
import 'package:mmm/SCREENS/Sign_up.dart';
import 'package:mmm/SCREENS/home.dart';
class Start extends StatefulWidget {
  static final String route = "Start";
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          SafeArea(child: ListView(children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.arrow_back,size: 35.0,),
                      SizedBox(width: MediaQuery.of(context).size.width/50,),
                      Text('Get Start',style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),),
                      SizedBox(width: MediaQuery.of(context).size.width/3+40.0,),
                    ],
                  ),
                ),
                InkWell(
                  child: Text('Skip',style: TextStyle(color: Colors.orangeAccent,fontSize: 20.0),),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/6,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height/12,
                  decoration: BoxDecoration(
                      color: Color(0xff1877F2),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Icon(Icons.language),
                      SizedBox(width:MediaQuery.of(context).size.width/10,),
                      Text('Sign in with facebook',style: TextStyle(fontSize: 20.0,color: Colors.white),),

                    ],
                  ),
                ),

              ),

            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: Divider(
                      color: Colors.grey,
                      height: 100,
                    )),
              ),

              Text("OR",style: TextStyle(color: Colors.grey),),

              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                    child: Divider(
                      color: Colors.grey,
                      height: 50,
                    )),
              ),
            ],),
            SizedBox(height: MediaQuery.of(context).size.height/25,),
            Padding(
              padding: const EdgeInsets.only(right: 15.0,left: 15.0),
              child: Container(
                  height: MediaQuery.of(context).size.height/14,
                  child: InkWell(
                    child: RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Sing_up()));},color: Color(0xffEA9307),child: Text('Sing up',style: TextStyle(color: Colors.white,fontSize: 22.0),),shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.orange)
                    ),),
                  )
              ),

            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));},
              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height/14,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange,width: 3.0),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25.0))
                  ),
                  child: Center(child: Text('Sign in',style: TextStyle(color: Colors.orange,fontSize: 22.0,fontWeight: FontWeight.bold),)),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/8,),
            Center(child: Text('By continuing, you agree to our Terms and Conditions',style: TextStyle(color: Colors.grey),)),
            Center(child: Text('and Privacy Policy',style:  TextStyle(color: Colors.grey),),)
          ],
          ),
          )


    );
  }
}

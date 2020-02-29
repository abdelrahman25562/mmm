import 'package:flutter/material.dart';

class Sing_up extends StatefulWidget {
  @override
  _Sing_upState createState() => _Sing_upState();
}

class _Sing_upState extends State<Sing_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back,size: 35.0,),
                    SizedBox(width: MediaQuery.of(context).size.width/50,),
                    Text('Sing up',style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),),
                    SizedBox(width: MediaQuery.of(context).size.width/3+40.0,),
                  ],
                ),
              ),
              InkWell(
                child: Text('Skip',style: TextStyle(color: Colors.orangeAccent,fontSize: 20.0),),
              )
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height/25,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text('Full name',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
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
        hintText: ' Example: Mohamed Mahmoud'
        ),
        ),
      ),
    ),
          SizedBox(height: MediaQuery.of(context).size.height/100,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text('E-mail address',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
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
                    hintText: ' Example: Mohamed@gmail.com'
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/100,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text('Password',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
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
                    hintText: ' 8 characters or longer'
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/100,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text('Confirm password',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
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
                    hintText: ' 8 characters or longer'
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/50,),
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
          SizedBox(height: MediaQuery.of(context).size.height/25,),
          Center(child: Text('Already have an account?',style: TextStyle(color: Colors.grey,fontSize: 15.0),)),
          SizedBox(height: MediaQuery.of(context).size.height/110,),
          InkWell(
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
        ],
      ),
    );
  }
}

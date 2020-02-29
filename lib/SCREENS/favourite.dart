import 'package:flutter/material.dart';
import 'package:mmm/Logic/logic_cart.dart';
import 'package:scoped_model/scoped_model.dart';
class favourite extends StatefulWidget {
  static final String route = "fav";
  @override
  _favouriteState createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    Widget generateCart(Data d){
      return Padding(
        padding: EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white12,
              border: Border(
                bottom: BorderSide(
                    color: Colors.grey[100],
                    width: 1.0
                ),
                top: BorderSide(
                    color: Colors.grey[100],
                    width: 1.0
                ),
              )
          ),
          height: 100.0,
          child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5.0
                      )
                    ],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)
                    ),
                    image: DecorationImage(image: NetworkImage(d.image),fit: BoxFit.fill)
                ),
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0,left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(d.name,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15.0),),
                            ),
                            Container(
                                alignment: Alignment.bottomRight,
                                child: ScopedModelDescendant<AppModel>(
                                  builder: (cotext,child,model){
                                    return InkResponse(
                                        onTap: (){
                                          model.removeCart(d);
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 10.0),
                                          child: Icon(Icons.remove_circle,color: Colors.red,),
                                        )
                                    );
                                  },
                                )
                            )
                          ],
                        ),
                        SizedBox(height: 5.0,),
                        Text("Price ${d.fav}"),

                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body:  Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: Colors.grey[300],
                        width: 1.0
                    )
                )
            ),
            child: ScopedModelDescendant<AppModel>(
              builder: (context,child,model){
                return ListView(

                  shrinkWrap: true,
                  children: model.cartListing.map((d)=>generateCart(d)).toList(),
                );
              },
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/25,),
          Padding(
            padding: const EdgeInsets.only(right: 15.0,left: 15.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/14,
                child: InkWell(
                  child: RaisedButton(color: Color(0xffEA9307),child: Text('Check out',style: TextStyle(color: Colors.white,fontSize: 22.0),),shape: RoundedRectangleBorder(
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

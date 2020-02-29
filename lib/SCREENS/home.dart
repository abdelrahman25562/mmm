import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:mmm/Logic/logic_cart.dart';
import 'package:mmm/SCREENS/Addlocation.dart';
import 'package:scoped_model/scoped_model.dart';

import "Cart.dart";
import 'Details.dart';


class Home extends StatefulWidget {
  AppModel appModel;
  static final String route = "Home-route";

  Home({this.appModel});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build( BuildContext context ) {
    var size = MediaQuery
        .of(context)
        .size;
    final GlobalKey _scaffoldKey = new GlobalKey();
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text("Home"),
          elevation: 0.0,
          actions: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: InkResponse(
                    onTap: ( ) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ( context ) => Cart()));
                    },
                    child: Icon(Icons.shopping_cart),
                  ),
                ),
                Positioned(
                  child: ScopedModelDescendant<AppModel>(
                    builder: ( context, child, model ) {
                      return Container(
                        child: Text(
                          (model.cartListing.length > 0) ? model.cartListing
                              .length.toString() : "",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.orangeAccent,
                              fontWeight: FontWeight.bold),),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
        body: SafeArea(child: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/25,
              child: Row(
                children: <Widget>[
                  Icon(Icons.toc,color: Colors.blueGrey,size: 40.0,),

                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 8.0),
                    child: Text('Search',style: TextStyle(color: Colors.grey,fontSize: 20.0),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 265.0),
                    child: Icon(Icons.drag_handle,color: Colors.grey,),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery
                .of(context)
                .size
                .height / 50, width: MediaQuery
                .of(context)
                .size
                .height / 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.language, color: Colors.black,),
                  Text(' Deliver to', style: TextStyle(color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),),
                  SizedBox(width: MediaQuery
                      .of(context)
                      .size
                      .width / 80,),
                  InkWell(onTap: _showDialog,
                      child: Text('Masourah', style: TextStyle(
                          color: Color(0xffEA9307), fontSize: 20.0),)),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  scrool('pizza'),
                  scrool('bread'),
                  scrool('marshemelo'),
                  scrool('wave'),
                  scrool('moov')
                ],
              ),

            ),
            SizedBox(height: 10.0,),
            Text('Restorant',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
            new Expanded(child: ScopedModelDescendant<AppModel>(
                builder: ( context, child, model ) {
                  return
                    GridGenerate(model.itemListing, (itemWidth / itemHeight));
                }
            ),)
          ],
        ))
    );
  }

  Widget scrool( String name ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(height: MediaQuery
          .of(context)
          .size
          .height / 11, width: MediaQuery
          .of(context)
          .size
          .width / 5,
        child: Text('$name', style: TextStyle(color: Colors.white),),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),

        ),

      ),
    );
  }

  Widget GridGenerate( List<Data> data, aspectRadtio ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: aspectRadtio),
        itemBuilder: ( BuildContext context, int index ) {
          return Padding(
              padding: EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: ( ) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ( context ) => Details(detail: data[index]))
                  );
                },
                child: Container(
                    height: 350.0,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8.0
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 100.0,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      data[index].image, fit: BoxFit.contain,),
                                  ),
                                ),
                                Container(
                                  child: data[index].fav ? Icon(
                                    Icons.favorite, size: 20.0,
                                    color: Colors.red,) : Icon(
                                    Icons.favorite_border, size: 20.0,),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("${data[index].name}",
                            style: TextStyle(fontWeight: FontWeight.w600,
                                fontSize: 15.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              StarRating(
                                  size: 15.0,
                                  rating: data[index].rating,
                                  color: Colors.orange,
                                  borderColor: Colors.grey,
                                  starCount: 5
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Text("\$${data[index].price.toString()}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500),),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                ),
              )
          );
        },
        itemCount: data.length,
      ),
    );
  }

  void _showDialog( ) {
    List<String> _checked = ["TRUE", "FALSE"];
    // flutter defined function
    showDialog(
      context: context,
      builder: ( BuildContext context ) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Select delivery address"),
          content: new Text("Current location"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[

                Icon(Icons.location_on),
                Text('Almaadi, Ahmed Saad 21', style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold),),


              ],),

            ),
            Divider(color: Colors.grey, height: 25.0,),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[

                Icon(Icons.flag, color: Color(0xffEA9307),),
                Text('Almaadi, Ahmed Saad 21', style: TextStyle(
                    color: Color(0xffEA9307),
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold),),
                SizedBox(width: 10.0,),
                Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 40,
                    child: InkWell(
                      child: RaisedButton(onPressed: ( ) {},
                        color: Color(0xffEA9307),
                        child: Text('work', style: TextStyle(color: Colors
                            .white, fontSize: 15.0),),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            side: BorderSide(color: Colors.orange)
                        ),),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: CheckboxGroup(
                    orientation: GroupedButtonsOrientation.HORIZONTAL,
                    margin: const EdgeInsets.only(left: 12.0),
                    onSelected: ( List selected ) =>
                        setState(( ) {
                          _checked = selected;
                        }),
                    labels: <String>[
                      ""

                    ],
                    checked: _checked,
                    itemBuilder: ( Checkbox cb, Text txt, int i ) {
                      return Column(
                        children: <Widget>[
                          cb,
                          txt,
                        ],
                      );
                    },
                  ),
                )
              ],),

            ),

            Padding(
              padding: const EdgeInsets.only(right: 50.0, left: 50.0),
              child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 20,
                  child: InkWell(
                    child: RaisedButton(onPressed: ( ) {},
                      color: Color(0xffF0F4F9),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(children: <Widget>[Icon(Icons.add), Center(
                            child: InkWell(onTap: ( ) {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: ( context ) => Addlocation()));
                            },
                                child: Text('Add Location', style: TextStyle(
                                    color: Colors.black, fontSize: 15.0),)))
                        ],),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          side: BorderSide(color: Color(0xffF0F4F9))
                      ),),
                  )
              ),
            ),
          ],

        );
      },
    );
  }
}
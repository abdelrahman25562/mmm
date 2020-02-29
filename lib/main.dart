import 'package:flutter/material.dart';
import 'package:mmm/SCREENS/Start.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:mmm/SCREENS/home.dart';
import 'Logic/logic_cart.dart';
import 'SCREENS/Addlocation.dart';
import 'SCREENS/Cart.dart';
import 'SCREENS/Details.dart';
import 'SCREENS/favourite.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
debugShowMaterialGrid: false,
    debugShowCheckedModeBanner: false,
    showSemanticsDebugger: false,
    home: Main(),


  ));
}
class Main extends StatelessWidget{

  AppModel appModel = AppModel();
  final routes = <String,WidgetBuilder>{
    Start.route:(BuildContext context)=>Start(),
    Addlocation.route:(BuildContext context)=>Addlocation(),
    Home.route:(BuildContext context)=>Home(),
    favourite.route:(BuildContext context)=>favourite(),
    Details.route:(BuildContext context)=>Details(),
    Cart.route :(BuildContext context)=>Cart()
  };

  @override
  Widget build(BuildContext context) {

    return ScopedModel<AppModel>(
      model: appModel,
      child: MaterialApp(
        home: Start(),
        routes: routes,
        theme: ThemeData(
            primaryColor: Colors.white
        ),
      ),
    );
  }
}




import 'package:project_01/GridScreen.dart';
import 'package:project_01/HomeScreen.dart';
import 'package:project_01/ListScreen.dart';
import 'package:project_01/LoginScreen.dart';
import 'package:project_01/SignUpScreen.dart';
import 'package:project_01/ResponsiveUI.dart';
import 'package:project_01/BulbScreen.dart';
import 'package:project_01/TestScreen1.dart';
import '../UserInfo.dart';


class Routes{

var routes = {
  '/': (context) => HomeScreen(),
  '/login': (context) => LoginScreen(),
  '/signup': (context) => SignUpScreen(),
  '/bulb': (context) => BulbScreen(),
  '/list': (context) => ListScreen(),
  '/grid': (context) => GridScreen(),
  '/ui': (context) => ResponsiveUIScreen(),
  '/test': (context) => TestScreen1(),
  '/info': (context) => UserInfo(name: '', email: '', mobile: '', password: '',),


};

}
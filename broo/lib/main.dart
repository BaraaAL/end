
//import 'package:book_an_event/couch.dart';
//import 'package:book_an_event/viwe/ProductsPage.dart';
//import 'package:book_an_event/viwe/firstPage.dart';
//import 'package:book_an_event/viwe/food_details.dart';
//import 'package:book_an_event/viwe/homepage.dart';
//import 'package:book_an_event/viwe/loginScreen.dart';
//import 'package:book_an_event/viwe/logupScreen.dart';

import 'package:broo/view/FoodDetails.dart';
import 'package:broo/view/homePage.dart';
import 'package:broo/view/logupScrren.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:book_an_event/viwe/food_details.dart';

import 'couch.dart';
//Run|Debug|Profile
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await CashHelper.init();

   runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  State<MyApp> createState() => _MyAppState();

}
class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          primaryColor: Color(0xffb47b84),
          //  backgroundColor: Color(0xffb47b84),
          //  appBarTheme: AppBarTheme(color: Color(0xffb47b84))
        ) ,
        home: CashHelper.getUserToken()==""? logupScreen():homePage(),
        routes: {
        //  'firstPage': (context) => const firstPage(),
        //  'loginscrren': (context) => const loginScreen(),
         // 'foodDetails':(context) =>  FoodDetails(),
        //  'ProductsPage':(context) => ProductsPage(),
        }



    );}}

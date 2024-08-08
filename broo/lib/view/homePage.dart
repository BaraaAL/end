
import 'package:broo/view/Locationdeatails.dart';
import 'package:broo/view/accisoresDetales.dart';
import 'package:broo/view/createEvent.dart';
import 'package:broo/view/photography_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:broo/view/FoodDetails.dart';


import 'package:broo/view/FoodDetails.dart';

//import 'ProductsPage.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

//  int selectrdindex=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Icon(Icons.circle,size: 50,color: Colors.white70,),
          backgroundColor: Color(0xffb47b84),
        ),
        endDrawer: Drawer(
          child: Column(children: [

            SizedBox(height: 40,),
            MaterialButton(onPressed: () {

            },
              child: Icon(Icons.account_circle_rounded,size: 60,color:Color(0xffb47b84),),
            ),
            SizedBox(height: 10,),
            Row(children: [
              MaterialButton(onPressed: () {
              },child: Icon(Icons.mail),),
              SizedBox(width: 1,),
              Text('Posts',style: TextStyle(fontSize: 10),),

            ],),
            SizedBox(height: 10,),
            Row(children: [
              MaterialButton(onPressed: () {
              },child: Icon(Icons.safety_check_outlined),),
              SizedBox(width: 1,),
              Text('Notifications',style: TextStyle(fontSize: 10),),

            ],),
            SizedBox(height: 10,),
            Row(children: [
              MaterialButton(onPressed: () {
              },child: Icon(Icons.contact_page),),
              SizedBox(width: 1,),
              Text('History of event',style: TextStyle(fontSize: 10),),
              SizedBox(height: 11,),
             // Text('App language',style: TextStyle(fontSize: 18),)

            ],),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Container(
                color: Color(0xffb47b84),
              child: Text('App Languages'),),
            ),

            SizedBox(height: 10,),
            Row(children: [
              MaterialButton(onPressed: () {
              },child: Icon(Icons.language),),
              SizedBox(width: 1,),
              Text('Arabic',style: TextStyle(fontSize: 10),),

            ],),
            Row(children: [
              MaterialButton(onPressed: () {
              },child: Icon(Icons.language),),
              SizedBox(width: 1,),
              Text('English',style: TextStyle(fontSize: 10),),

            ],),
            SizedBox(height: 10,),
            Row(children: [
              MaterialButton(onPressed: () {
              },child: Icon(Icons.edit_road_sharp),),
              SizedBox(width: 1,),
              Text('About us',style: TextStyle(fontSize: 10),),

            ],),
            SizedBox(height: 10,),
            Row(children: [
              MaterialButton(onPressed: () {
              },child: Icon(Icons.insert_invitation,color: Color(0xffb47b84),),),
              SizedBox(width: 1,),
              Text('Invite Friends',style: TextStyle(fontSize: 10),),

            ],),
          ],),
        ),
        backgroundColor: Color(0xffb47b84),
        body:
        Container(
          height: 810,width: 400,
          color:Color(0xffb47b84),
          child:
          ListView(//mainAxisAlignment: MainAxisAlignment.end,
            children:[
              SizedBox(height: 90,),
              MaterialButton(onPressed: () {
                // Get.to(createEvent());
                Get.to(FoodDetails());
              },


                child: Icon(Icons.add,size: 40,),
              ),
              Text("     Posts",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              SizedBox(height:20,),
              Container(margin: EdgeInsets.all(10),
                color: Colors.grey[300],height: 200,width: 360,),

              SizedBox(height: 1,),
              Container(margin: EdgeInsets.all(10),
                color: Colors.grey[300],height: 200,width: 360,),
              SizedBox(height: 1,),
              Container(margin: EdgeInsets.all(10),
                color: Colors.grey[300],height: 200,width: 360,),

              SizedBox(height: 1,),
              Container(margin: EdgeInsets.all(10),
                color: Colors.grey[300],height: 200,width: 360,),

              SizedBox(height: 1,),


              Container(margin: EdgeInsets.all(10),
                color: Colors.grey[300],height: 200,width: 360,),


            ]
            // MaterialButton(onPressed: () {
            //
            // },
            // child: Icon(Icons.circle,size: 70,color: Colors.white70,),)

            ,),

        ) );
  }
}

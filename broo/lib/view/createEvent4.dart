
//import 'package:book_an_event/viwe/Categories.dart';
//import 'package:book_an_event/viwe/accessories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
//import 'package:book_an_event/viwe/food.dart';

class createEvent4 extends StatefulWidget {
  const createEvent4({super.key});

  @override
  State<createEvent4> createState() => _createEvent4State();
}

class _createEvent4State extends State<createEvent4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Event",style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 20,
      ),),backgroundColor: Color(0xffb47b84),),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40,left: 50,right: 50),
            height: 300,width: 200,
            color: Color(0xfb47b84),
            child: Column(children: [
              SizedBox(height: 4,),
              Text("   Name of event : "),
              SizedBox(height: 10,),
              Text("   Type of event  : "),
              SizedBox(height: 10,),
              Text("   Number of attendents : "),
              SizedBox(height: 10,),
              Text("   Event time : "),
              SizedBox(height: 10,),
              Text("   your greatest cost  : "),
              SizedBox(height: 10,),
              Text("   Event description  : "),



            ],),
          ),

          Container(width: 160,
            margin: EdgeInsets.only(left: 130,top: 180),
            child: MaterialButton(onPressed: () {
             // Get.to(CategoriesScreen());
            },color: Color(0xffb47b84),child: Row(
              children: [
                Text("CREAT EVENT"),
                SizedBox(width: 1,),
                Icon(Icons.pinch)
              ],

            ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
          )

        ],
      ),



    );
  }
}

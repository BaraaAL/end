//import 'package:book_an_event/viwe/CreateEvent2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'createEvent2.dart';

class createEvent extends StatefulWidget {
  const createEvent({super.key});

  @override
  State<createEvent> createState() => _createEventState();
}

class _createEventState extends State<createEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Event",style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 20,
      ),),backgroundColor: Color(0xffb47b84),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Color(0xfb47b84),
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xffe7e7),
                  ),

                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffe7e7))
                ),

                labelText: "Name of event",


              ),
            ),
          ),
          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Color(0xfb47b84),
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xffe7e7),
                  ),

                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffe7e7))
                ),

                labelText: "Type of event",


              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              maxLength: 10,
              decoration: InputDecoration(
                fillColor: Color(0xfb47b84),
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xffe7e7),
                  ),

                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffe7e7))
                ),

                labelText: "Phone number",


              ),
            ),
          ),
          SizedBox(height: 70,),

          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(margin: EdgeInsets.only(left: 60),
                padding: EdgeInsets.all(7),
                height: 50,width: 200,color: Color(0xfb47b84),
                child: Row(
                  children: [
                    Text("Number of attendents "),
                    SizedBox(width: 1,),
                    Icon(Icons.person),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(height: 50,width: 80,color: Color(0xfb47b84),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                ),)
            ],),

          Container(width: 90,
            margin: EdgeInsets.only(left: 220,top: 165),
            child: MaterialButton(onPressed: () {
              Get.to(createEvent2());

            },color: Color(0xffb47b84),child: Row(
              children: [
                Text("Next"),
                SizedBox(width: 1,),
                Icon(Icons.pinch)
              ],

            ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
          )


















        ],),
      ),
    );
  }
}

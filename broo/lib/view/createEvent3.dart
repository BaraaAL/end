//import 'package:book_an_event/viwe/createEvent4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'createEvent4.dart';
class createEvent3 extends StatefulWidget {
  const createEvent3({super.key});

  @override
  State<createEvent3> createState() => _createEvent3State();
}

class _createEvent3State extends State<createEvent3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Create Event",style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 20,
      ),),backgroundColor: Color(0xffb47b84),),

      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 40,),

          Container(height: 350,width: 300,color:Color(0xfb47b84) ,
            child: TextFormField(
              maxLines: 100,
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

                labelText: "Describe the event you want :",


              ),
            ),
          ),

          Container(width: 90,
            margin: EdgeInsets.only(left: 260,top: 200),
            child: MaterialButton(onPressed: () {
              Get.to(createEvent4());

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

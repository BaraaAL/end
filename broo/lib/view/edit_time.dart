
import 'package:broo/view/createEvent3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class createEvent2 extends StatefulWidget {
  const createEvent2({super.key});

  @override
  State<createEvent2> createState() => _createEvent2State();
}

class _createEvent2State extends State<createEvent2> {
  void _datePicker(){
    showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2024),
        lastDate: DateTime(2030));
  }
  void _timePicker(){
    showTimePicker(context: context,
        initialTime: TimeOfDay.now());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text("Create Event",style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),backgroundColor: Color(0xffb47b84),),
        body: SingleChildScrollView(
          child: Column(
            //Dateeeee
              children: [
                MaterialButton(onPressed: () {
                  _datePicker();
                },

                  child: Container(margin: EdgeInsets.only(top: 60),padding: EdgeInsets.only(left: 30,top: 15),
                    height: 50,width: 270,color: Color(0xfb47b84),child: Text("Date",style: TextStyle(
                      color: Colors.grey[600],
                    ),),),
                ),


                SizedBox(height: 19,),
                Container(margin: EdgeInsets.only(right: 190),
                    child: Text("Time",style: TextStyle(
                        fontSize: 20,color: Color(0xffcaa6a6)),textAlign: TextAlign.left,)),
                Container(margin: EdgeInsets.only(right: 190),
                  height: 1,width: 60,color: Colors.grey,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(margin: EdgeInsets.only(left: 30,),color: Color(0xfb47b84),
                      width: 150,height: 50,
                      child:MaterialButton(onPressed: () {
                        _timePicker();
                      },
                        child: Text("From"),
                      ) ,


                    ),


                    SizedBox(width: 30,),
                    Container(margin: EdgeInsets.only(left: 1,),color: Color(0xfb47b84),
                      width: 150,height: 50,
                      child:MaterialButton(onPressed: () {
                        _timePicker();
                      },
                        child: Text("to"),
                      ) ,


                    ),

                  ],
                ),
                SizedBox(height: 50,),
                Row(children: [
                  Container(padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 20),
                    height: 40,width: 200,color:Color(0xfb47b84),

                    child:
                    Text(" state your maximum cost "),

                  ),
                  SizedBox(width:15,),
                  Container(margin: EdgeInsets.only(left: 1,),
                    width: 100,height: 40,
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
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

                        labelText: "   s    ",


                      ),

                    ),

                  ),


                ],),

                Container(width: 90,
                  margin: EdgeInsets.only(left: 220,top: 300),
                  child: MaterialButton(onPressed: () {
                    Get.to(createEvent3());

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





              ]  ),
        ) );
  }
}

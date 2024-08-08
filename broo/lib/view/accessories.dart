
import 'package:broo/view/accisoresDetales.dart';
import 'package:broo/abd.dart';
import 'package:broo/view/accisoresDetales.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class accessories extends StatefulWidget {
  const accessories({super.key});

  @override
  State<accessories> createState() => _foodState();
}

class _foodState extends State<accessories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(backgroundColor: Color(0xffb47b84),
          title: Text("accessories",style: TextStyle(fontWeight: FontWeight.bold),

          )),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:10,width: 2,),
          Text("Flower",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xffb47b84)),),

          Row(children: [
            MaterialButton(onPressed: () {
              Get.to(accessories_details());
            },
              child: Container(height: 100,width: 100,

                child: Image(image:AssetImage("images/logoo.jpg",)),


              ),
            ),


            MaterialButton(onPressed: () {
              Get.to(accessories_details());
            },
              child: Container(height: 100,width: 100,

                child: Image(image:AssetImage("images/logoo.jpg",)),


              ),
            ),
            MaterialButton(onPressed: () {

            },height: 100,
              child: Container(padding: EdgeInsets.all(15),
                  height: 70,width: 70,color: Color(0xffb47b84),
                  child: Text("Show "
                      "more ")),
            )


          ],),
          Text("Flower ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xffb47b84)),),

          Row(children: [
            MaterialButton(onPressed: () {
              Get.to(accessories_details());
            },
              child: Container(height: 100,width: 100,

                child: Image(image:AssetImage("images/logoo.jpg",)),


              ),
            ),


            MaterialButton(onPressed: () {
              Get.to(accessories_details());

            },
              child: Container(height: 100,width: 100,

                child: Image(image:AssetImage("images/logoo.jpg",)),


              ),
            ),
            MaterialButton(onPressed: () {

            },height: 100,
              child: Container(padding: EdgeInsets.all(15),
                  height: 70,width: 70,color: Color(0xffb47b84),
                  child: Text("Show "
                      "more ")),
            )


          ],),
          Text("Flower",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xffb47b84)),),

          Row(children: [
            MaterialButton(onPressed: () {
              Get.to(accessories_details());
            },
              child: Container(height: 100,width: 100,

                child: Image(image:AssetImage("images/logoo.jpg",)).onTap(() { }).center(),


              ),
            ),


            MaterialButton(onPressed: () {
              Get.to((accessories_details()));
            },
              child: Container(height: 100,width: 100,

                child: Image(image:AssetImage("images/logoo.jpg",)),


              ),
            ),
            MaterialButton(onPressed: () {

            },height: 100,
              child: Container(padding: EdgeInsets.all(15),
                  height: 70,width: 70,color: Color(0xffb47b84),
                  child: Text("Show "
                      "more ")),
            )


          ],)






        ],),
    );
  }
}

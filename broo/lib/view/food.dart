
import 'package:broo/view/FoodDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class food extends StatefulWidget {
  const food({super.key});

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(backgroundColor: Color(0xffb47b84),
          title: Text("food",style: TextStyle(fontWeight: FontWeight.bold),

          )),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:10,width: 2,),
          Text("Appetizers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xffb47b84)),),

          Row(children: [
            MaterialButton(onPressed: () {
              Get.to(FoodDetails());
            },
              child: Container(height: 100,width: 100,

                child: Image(image:AssetImage("images/logoo.jpg",)),


              ),
            ),


            MaterialButton(onPressed: () {
              Get.to(FoodDetails());
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
          Text("Dessert ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xffb47b84)),),

          Row(children: [
            MaterialButton(onPressed: () {
              Get.to(FoodDetails());
            },
              child: Container(height: 100,width: 100,

                child: Image(image:AssetImage("images/logoo.jpg",)),


              ),
            ),


            MaterialButton(onPressed: () {
              Get.to(FoodDetails());

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
          Text("Juices",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xffb47b84)),),

          Row(children: [
            MaterialButton(onPressed: () {
              Get.to(FoodDetails());
            },
              child: Container(height: 100,width: 100,

                child: Image(image:AssetImage("images/logoo.jpg",)),


              ),
            ),


            MaterialButton(onPressed: () {
              Get.to(FoodDetails());
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

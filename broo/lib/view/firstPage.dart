
import 'package:broo/view/logupScrren.dart';
import 'package:flutter/material.dart';
import 'package:broo/view/loginScreen.dart';
import 'package:get/get.dart';


class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Container(color:Color(0xff944e63),
          child: Column(

            children: [
              Container(height: 40,),
              Image(image: AssetImage("images/logoo.jpg")),
              Container(height: 268,),
              //GET START...........
              MaterialButton(onPressed: () {
                Get.to(logupScreen());
                //Navigator.of(context)..push(MaterialPageRoute(builder: (context)=> logupScreen()));

              },child: Container(padding:EdgeInsets.all(15),
                height: 50,width: 300,child: Text("Get Start",textAlign:TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),

                ),),
              color: Color(0xffeef5ff),

              ),
              //log in.......
              Container(height: 14,),
              MaterialButton(onPressed: () {
                Get.to(loginScreen());
               // Navigator.of(context)..push(MaterialPageRoute(builder: (context)=> loginScreen()));

              },child: Container(padding: EdgeInsets.all(15),
                height: 50,width: 300,child: Text("Log in",
                textAlign:TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
              ),),
                color: Color(0xffEEF5FF),

              )
          ],),
        ),
      ),
    );
  }
}

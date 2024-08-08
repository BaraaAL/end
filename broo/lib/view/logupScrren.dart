
import 'dart:convert';
//import 'dart:html';
import 'package:broo/abd.dart';
import 'package:http/http.dart'as http;
import 'package:broo/view/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:broo/my_import.dart';

import '../couch.dart';


class logupScreen extends StatefulWidget {
  const logupScreen({super.key});

  @override
  State<logupScreen> createState() => _logupScreenState();
}

class _logupScreenState extends State<logupScreen> {

  Future logup(String name,String email,String pass,String confpass)async
  {
    try{
      print('122345');
      print(pass + '   ' + email+ '  '+ name+' '+confpass);
      var response = await http.post(

        //http://localhost:8000/api/register
          Uri.parse('http://192.168.1.103:8000/api/register'),
          body: {
            'email': email,
            'password': pass,

          }
      );
      print('response: ${response.body}');
      print('response: ${response.statusCode}');
      if (response.statusCode == 200) {
        CircularProgressIndicator(color: Colors.green,).center();
        Get.to(homePage());
       // Get.to(homePage());
        var js = jsonDecode(response.body);
        String token = js['token'];
        CashHelper.putUser(userToken: token);
        print("the token is $token");


      }
      else {
        print('sorrrry');
      }
    }catch(error){print(error);}


  }
  bool repasswardVisibility = true;
  bool passwardVisibility = true;
//  crud _crud = crud();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();


  /*singUp()async{

  var response=  await _crud.postRequest('http://localhost:8000/api/register',{
      "name":nameController.text,
      "email" :emailController.text,
      "password":passwordController.text,
      "password_confirmation":confirmPasswordController.text
    });
  if(response.statusCode == 200){
    Get.to(homePage());
  }else{
    print('Error: ${response.statusCode}');

  }
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(child:Column(

          children: [
            Container(height: 50,),

            Container(height: 100,width: 90,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xff944e63),
                    borderRadius: BorderRadius.circular(30)

                ),
                child: Image.asset("images/logoo.jpg",height: 90,width: 80,)),
//text................................
            SizedBox(height: 10,),
            Text("Welcome to Book an Event ",style: TextStyle(fontSize: 19,fontWeight:FontWeight.bold,color: Color(0xff944e63)),),
            SizedBox(height: 15,width: 10,),
            Row(
              children: [
                Container(width: 30,),
                Container(
                  child: Text("Sing up",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),
              ],
            ),
            //name....
            // SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  fillColor: Color(0xfb47b84),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffeef5ff),
                    ),




                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffeef5ff))
                  ),

                  labelText: "Name",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  hintText: "pleas enter",

                ),
              ),
            ),

            //email........
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  fillColor: Color(0xfb47b84),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffeef5ff),
                    ),




                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffeef5ff))
                  ),

                  labelText: "Email ",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  hintText: "pleas enter",

                ),
              ),
            ),
            //password
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  fillColor: Color(0xfb47b84),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffeef5ff),
                    ),




                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffeef5ff))
                  ),

                  labelText: "Password",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  hintText: "pleas enter",

                ),
              ),
            ),
            // confirm
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: confirmPasswordController,
                decoration: InputDecoration(
                  fillColor: Color(0xfb47b84),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black,
                    ),




                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffeef5ff))
                  ),

                  labelText: "Confirm Password",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  hintText: "pleas enter",

                ),
              ),
            ),



//bouttn sing up ...........................
            SizedBox(height: 20,),
            Container(width: 160,height:50 ,
              child: MaterialButton(onPressed: () async{
                await
                logup(nameController.text, emailController.text, passwordController.text, confirmPasswordController.text);
                //  Get.to(homePage());
                //   Get.to(FoodDetails());
              },


                color: Color(0xff944e63),
                child: Text("Sing up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),


              ),
            ),

          ],),

        ),
      ),
    );
  }
}

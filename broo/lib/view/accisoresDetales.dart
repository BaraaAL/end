import 'dart:io';


import 'package:broo/abd.dart';
import 'package:broo/model/foodDetailes_model.dart';
import 'package:broo/my_help/all_get.dart';
//import 'package:book_an_event/services/get_all_product_service.dart';
import 'package:broo/abd.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:broo/model/foodDetailes_model.dart';

import '../model/accisoreDetales_model.dart';

class accessories_details extends StatefulWidget {
  @override
  _accessories_detailsState createState() => _accessories_detailsState();
}

class _accessories_detailsState extends State<accessories_details> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accisorees Details'),
        backgroundColor: Color(0xffb47b84),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<accisoreDetales_modelResponse>(


            future: GetAllaccisores().getaccisoreOne( ),
            builder: (context,snapshot){

              if(snapshot.hasData){
                return ListView(
                  children: [
                    Container(height: 150,color: Colors.grey,),
                    SizedBox(height: 60,),

                    Row(children: [
                      Text(' Description :'),
                      SizedBox(width: 2,),
                      Text(snapshot.data!.accisore[1].description.toString()),
                    ],),
                    SizedBox(height: 60,),
                    Row(children: [
                      Text("   cost: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffb47b84)),),
                      Text((snapshot.data!.accisore[1].price.toString()),
                      )   ],),
                    SizedBox(height: 60,),

                    Container(padding: EdgeInsets.all(10),
                      width: 190,
                      margin: EdgeInsets.only(left: 30,top: 130),
                      child: MaterialButton(onPressed: () {


                      },color: Color(0xffb47b84),child: Row(
                        children: [
                          Text("Make reservation "),
                          SizedBox(width: 1,),

                        ],

                      ),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      ),
                    )

                  ],);
              }
              if(snapshot.hasError){
                return
                  Column(
                    children: [
                      Container(child:Text('Erorr').center(),),
                      CircularProgressIndicator(color: Colors.red,).center(),
                    ],
                  );


              }
              else{//CircularProgressIndicator
                return  Column(
                  children: [
                    Container(child:Text('Loging').center(),),
                    CircularProgressIndicator(color: Colors.green,).center(),
                  ],
                );
              }
            },
          )
      ),
    );
  }
}
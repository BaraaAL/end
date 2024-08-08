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

import '../model/potographyDetales_model.dart';

class PhotographyDetails extends StatefulWidget {
  @override
  _PhotographyDetailsState createState() => _PhotographyDetailsState();
}

class _PhotographyDetailsState extends State<PhotographyDetails> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('  Photography Details'),
        backgroundColor: Color(0xffb47b84),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<potographyDetales_modelResponse>(


            future: GetAllphotography().getphotographyOne(),
            builder: (context,snapshot){

              if(snapshot.hasData){
                return Column(children: [
                  Row(children: [
                    Image.asset(
                      'sdfg',
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ]),
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(255, 231, 231, 100),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text('visit site'),
                            style: TextButton.styleFrom(
                                alignment: Alignment.bottomRight,
                                foregroundColor: Color.fromRGBO(148, 78, 99, 100),
                                textStyle: TextStyle(fontSize: 16)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '   description :',
                        style: TextStyle(color: Color.fromRGBO(148, 78, 99, 100)),
                      ),
                      Text(snapshot.data!.photography[1].description.toString())
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Text(
                        '    cost :',
                        style: TextStyle(color: Color.fromRGBO(148, 78, 99, 100)),
                      ),
                      Text(snapshot.data!.photography[1].price.toString())
                    ],
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 231, 231, 100),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Make reservation'),
                          style: TextButton.styleFrom(
                              alignment: Alignment.bottomRight,
                              foregroundColor: Color.fromRGBO(148, 78, 99, 100),
                              textStyle: TextStyle(fontSize: 16)),
                        ),
                      ),
                    ],
                  )
                ]);
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
                    CircularProgressIndicator(color: Colors.red,).center(),
                  ],
                );
              }
            },
          )
      ),
    );
  }
}
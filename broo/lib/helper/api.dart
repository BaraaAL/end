
import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import '../couch.dart';
class Api{

  String? token= CashHelper.getUserToken();
  Future<dynamic> get({required String url})async{
    Map<String,String> headers = {};
    if(token != null)
    {
      headers.addAll({
        'Authorization':'Bearer $token'
      });
    }

    http.Response  response= await http.get(Uri.parse(url),headers: headers);

    if(response.statusCode==200|| response.statusCode<299){
      return jsonDecode(response.body);

    }else{

      throw Exception('there problem is ${response.statusCode},with body:${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> post({required String url,@required dynamic body,@required String? token})async{
    Map<String,String> headers = {};
    if(token!= null)
    {
      headers.addAll({
        'Authorization':'Bearer $token'
      });
    }
    http.Response response = await http.post(Uri.parse(url),
      body:body,
      headers: headers,

    );
    if(response.statusCode==200){
      Map<String,dynamic> data =jsonDecode(response.body);
      return data;}
    else {
      throw Exception('there problem is ${response.statusCode},with body:${jsonDecode(response.body)}');
    }
  }

}
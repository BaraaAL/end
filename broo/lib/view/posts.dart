import 'package:flutter/material.dart';
class posts extends StatefulWidget {
  const posts({super.key});

  @override
  State<posts> createState() => _postsState();
}

class _postsState extends State<posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Color(0xffb47b84),
      title: Text('Posts',style: TextStyle(fontSize: 40),),),
      body: ListView(children: [
        SizedBox(height: 30,),
        Container(height: 300,color: Colors.grey,
        child: Text('   Creat post '),),
        SizedBox(height: 20,),

//complementation of this list from Api.....................................
      ],),
    );
  }
}

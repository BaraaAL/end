import 'dart:convert';
import 'package:broo/model/Locationdeatails_model.dart';
import 'package:broo/network/api_location.dart';
import 'package:broo/view/Locationdeatails.dart';
import 'package:broo/view/FoodDetails.dart';
import 'package:broo/view/show_more_location.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart' as http;

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {

  dynamic subRoomsData;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    fetchSubRoomsData();
  }

  Future<location> fetchSubRoomsData() async {
    try {
      http.Response response = await http.get(Uri.parse(
          'http://localhost:8000/api/listplacesbycategory?name=resturants'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return location.fromJson(jsonData);
      } else {
        // Option 1: Throw an error
        throw Exception('Failed to fetch data. Status code: ${response.statusCode}');

        // Option 2: Return a default Location
        // return Location(); // Make sure to provide default values
      }
    } catch (e) {
      // Option 1: Re-throw the exception
      throw Exception('Error fetching data: $e');

      // Option 2: Return a default Location
      // return Location(); // Make sure to provide default values
    }
  }

// ... Your build method to display data or error ...

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffb47b84),
          title: Text(
            "Location",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
              width: 2,
            ),
            Text(
              "Wedding halls",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xffb47b84)),
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.to(Locationdeatails());
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image(
                        image: AssetImage(
                          "images/logoo.jpg",
                        )),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Get.to(Locationdeatails());
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image(
                        image: AssetImage(
                          "images/logoo.jpg",
                        )),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  height: 100,
                  child: Container(
                      padding: EdgeInsets.all(15),
                      height: 70,
                      width: 70,
                      color: Color(0xffb47b84),
                      child: Text("Show more ")),
                )
              ],
            ),
            SizedBox(
              height: 20,
              width: 2,
            ),
            Text(
              "Hotels ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xffb47b84)),
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.to(Locationdeatails());
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image(
                        image: AssetImage(
                          "images/logoo.jpg",
                        )),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Get.to(Locationdeatails());
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image(
                        image: AssetImage(
                          "images/logoo.jpg",
                        )),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  height: 100,
                  child: Container(
                      padding: EdgeInsets.all(15),
                      height: 70,
                      width: 40,
                      color: Color(0xffb47b84),
                      child: Text("Show more ")),
                )
              ],
            ),
            SizedBox(
              height: 20,
              width: 2,
            ),
            Text(
              "Restaurants",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xffb47b84)),
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.to(Locationdeatails());
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image(
                        image: AssetImage(
                          "images/logoo.jpg",
                        )),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Get.to(Locationdeatails());
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image(
                        image: AssetImage(
                          "images/logoo.jpg",
                        )),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  height: 100,
                  child: Container(
                      padding: EdgeInsets.all(15),
                      height: 70,
                      width: 70,
                      color: Color(0xffb47b84),
                      child: Text("Show more ")),
                )
              ],
            ),
            SizedBox(
              height: 20,
              width: 2,
            ),
            Text(
              "Natural places",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xffb47b84)),
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.to(Locationdeatails());
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image(
                        image: AssetImage(
                          "images/logoo.jpg",
                        )),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Get.to(Locationdeatails());
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image(
                        image: AssetImage(
                          "images/logoo.jpg",
                        )),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    showModalBottomSheet(context: context, builder: (c)=>  Show());
                  },
                  height: 100,
                  child: Container(
                      padding: EdgeInsets.all(15),
                      height: 70,
                      width: 70,
                      color: Color(0xffb47b84),
                      child: Text("Show more ")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

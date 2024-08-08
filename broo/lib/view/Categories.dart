
import 'package:broo/view/location.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category {
  final String name;

  Category({required this.name});
}

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int selectedIndex = -1;

  final List<Category> categories = [
    Category(name: "LOCATION"),
    Category(name: "FOOD"),
    Category(name: "PHOTOGRAPHY"),
    Category(name: "ACCESSORIES"),
    Category(name: "INVITATION CARDS"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button tap
          },
        ),
        title: Text("Categories"),
        backgroundColor: Color(0xFF944E63), // #944E63 in hex format
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                categories.length,
                    (index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(location());
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
                      padding: EdgeInsets.all(66.0),
                      decoration: BoxDecoration(
                        color: selectedIndex == index ? Color(0xFFFFE7E7) : Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          categories[index].name,
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}



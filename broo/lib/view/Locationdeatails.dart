
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // استيراد حزمة http

class Locationdeatails extends StatefulWidget {
  const Locationdeatails({super.key});

  @override
  State<Locationdeatails> createState() => _LocationdeatailsState();

}

class _LocationdeatailsState extends State<Locationdeatails> {
  String cardDescription = "";
  String price = "";

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://localhost:8000/api/allFoods')); // اضبط الرابط هنا

    if (response.statusCode == 200) {
      // تحقق من نجاح الاستجابة
      // يمكن تعديل هذا الجزء حسب بنية البيانات الواصلة من الباك
      cardDescription = "بعض المعلومات من الاستجابة";
      price = "سعر من الاستجابة";

      setState(() {}); // تحديث الواجهة بعد جلب البيانات
    }
  }

  @override
  Widget build(BuildContext context) {
    fetchData(); // جلب البيانات عند بناء الواجهة

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb47b84),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(height: 150, color: Colors.grey),
          SizedBox(height: 60),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Color(0xfb47b84),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xffe7e7)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffe7e7)),
              ),
              labelText: "Card :",
            ),
          ),
          SizedBox(height: 60),
          Row(children: [
            Text("      cost for a person: ", style: TextStyle(color: Color(0xff944e63)),),
            Text(price)
          ]),
          SizedBox(height: 60),
          // باقي القسم
        ]),
      ),
    );
  }
}

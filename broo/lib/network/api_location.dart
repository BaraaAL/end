import 'dart:convert';

import 'package:book_an_event/model/location_model.dart';
import 'package:http/http.dart' as http;

class api_location {


  static Future<Location> fetchSubRoomsData() async {
    try {
      http.Response response = await http.get(Uri.parse(
          'http://localhost:8000/api/listplacesbycategory?name=resturants'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return Location.fromJson(jsonData);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }



}
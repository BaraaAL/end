import 'dart:convert';

import 'package:broo/view/location.dart';
import 'package:flutter/material.dart';
import '../network//api_location.dart';

import 'package:broo/model/Locationdeatails_model.dart';

import 'package:http/http.dart' as http;

class Show extends StatefulWidget {
  const Show({super.key});

  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> {
  @override
  final String apiUrl = 'http://10.0.2.2:8000/api/listplacesbycategory?name=wedding halls';
  late Future<List<location>> _locations;

  // 3. Fetch data from the API
  Future<List<location>> fetchLocations() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body) as List<dynamic>;
        return jsonData.map((item) => location().fromJson(item)).toList();
      } else {
        throw Exception('Failed to load locations');
      }
    } catch (e) {
      print('Error fetching data: $e'); // Log the error for debugging
      throw Exception('Error fetching data: $e');
    }
  }

  void initState() {
    super.initState();
    _locations = fetchLocations();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations'),
      ),
      body: FutureBuilder<List<location>>(
        future: _locations,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            // 4. Build the GridView
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Two columns
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              padding: const EdgeInsets.all(8.0),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final location = snapshot.data![index];
                return GridTile(
                  footer: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.black54,
                    child: Text(
                      location.title!,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  child: location.media_url != null
                      ? Image.network(
                    location.media_url!,
                    fit: BoxFit.cover,
                  )
                      : const Icon(Icons.image, size: 50.0), // Placeholder
                );
              },
            );
          } else {
            return const Center(child: Text('No locations found.'));
          }
        },
      ),
    );
  }
}






















/*
Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(

        children: [
           TextField(
             maxLength: 20,
             decoration: InputDecoration(

               icon: Icon(Icons.search,size: 50,)
             ),
           ),
           Row(
             children: [GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               mainAxisSpacing: 20,
               crossAxisSpacing: 20
             ),
               children: [

               ],
             )
             ],

)
        ],
      ),
    );
  }
 */




/*class LocationCard extends StatelessWidget {
  final Location location;

  const LocationCard({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (location.media_url != null)
            Image.network(
              location.media_url!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  location.title ?? 'No Name',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  location.title ?? 'No Address',
                  style: const TextStyle(fontSize: 16),
                ),
                // ... Add more details like description, category, etc.
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class LocationListScreen extends StatefulWidget {
  const LocationListScreen({Key? key}) : super(key: key);

  @override
  _LocationListScreenState createState() => _LocationListScreenState();
}

class _LocationListScreenState extends State<LocationListScreen> {
  Future<Location>? _futureLocation;

  @override
  void initState() {
    super.initState();
    _futureLocation = api_location.fetchSubRoomsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants'),
      ),
      body: FutureBuilder<Location>(
        future: _futureLocation,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return LocationCard(location: snapshot.data!);
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}

*/

































/*import 'package:flutter/material.dart';

import '../model/location_model.dart';
import '../network//api_location.dart';

class LocationCard extends StatefulWidget {
  final Location location;

  const LocationCard({Key? key, required this.location}) : super(key: key);

  @override
  State<LocationCard> createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  @override
  void initState() {
    super.initState();
    api_location.getallLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.location.media_url != null)
            Image.network(
              widget.location.media_url!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.location.title ?? 'No Name',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.location.title ?? 'No Address',
                  style: const TextStyle(fontSize: 16),
                ),
                // ... Add more details like description, category, etc.
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/
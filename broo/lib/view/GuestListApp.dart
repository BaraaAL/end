import 'package:flutter/material.dart';

void main() {
  runApp(GuestListApp());
}

class GuestListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GuestListScreen(),
    );
  }
}

class GuestListScreen extends StatelessWidget {
  final List<String> guestNames = ['Ayat','fdf','Anna','Roua','hh']; // Replace with actual guest names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guest list'),
        backgroundColor: Color(0xFF944E63),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.pink.shade50,
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Attending\n${guestNames.length}',
                    style: TextStyle(color: Colors.black)),
                Text('Pending\n0', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: guestNames.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(guestNames[index][0]),
                    backgroundColor: Color(0xFFCAA6A6),
                    foregroundColor: Colors.black,
                  ),
                  title: Text(guestNames[index]),
                  // Add any other relevant guest information here
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle adding new guests
        },
        backgroundColor: Color(0xFF944E63),
        child: Icon(Icons.add),
      ),
    );
  }
}

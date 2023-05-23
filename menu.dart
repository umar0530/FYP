import 'package:flutter/material.dart';
import 'package:travelguide/homepage.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildMenuItem(Icons.home, 'Home', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }),
            buildMenuItem(Icons.history, 'Traveling History', () {
              // Handle tap for Traveling History
            }),
            buildMenuItem(Icons.person, 'Profile', () {
              // Handle tap for Profile
            }),
            buildMenuItem(Icons.message, 'Complain', () {
              // Handle tap for Complain
            }),
            buildMenuItem(Icons.library_books, 'Terms & Conditions', () {
              // Handle tap for Terms & Conditions
            }),
            buildMenuItem(Icons.business, 'Company Profile', () {
              // Handle tap for Company Profile
            }),
            buildMenuItem(Icons.phone, 'Contact Us', () {
              // Handle tap for Contact Us
            }),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String label, Function onTap) {
    return InkWell(
      onTap: onTap as void Function()?, // Cast onTap to the correct function type
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: [
            Icon(icon, size: 30, color: Colors.green),
            SizedBox(width: 16.0),
            Text(
              label,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: MenuPage(),
  ));
}

import 'package:flutter/material.dart';
import 'package:travelguide/bookguide.dart';
import 'package:travelguide/menu.dart';
import 'package:travelguide/viewplaces.dart';

class HomePage extends StatelessWidget {
  final List<String> imageList = [
    'assets/images/pic1.jpg',
   // 'assets/image2.jpg',
    'assets/images/peakpx.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PakJourney'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      imageList[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildFeatureButton(Icons.book, 'Book Guide', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GuideBookingPage()),
                  );
                }),
                buildFeatureButton(Icons.place, 'View Places', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VisitPlacesPage()),
                  );
                }),
                buildFeatureButton(Icons.home, 'House Booking', () {
                  // Add your code for House Booking button
                }),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildFeatureButton(Icons.bookmark, 'My Booking', () {
                  // Add your code for My Booking button
                }),
                buildFeatureButton(Icons.monetization_on, 'Refund', () {
                  // Add your code for Refund button
                }),
                buildFeatureButton(Icons.message, 'Complain', () {
                  // Add your code for Complain button
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFeatureButton(IconData icon, String label, VoidCallback onPressed) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            child: IconButton(
              icon: Icon(
                icon,
                size: 30,
                color: Colors.white,
              ),
              onPressed: onPressed,
            ),
            backgroundColor: Colors.green,
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

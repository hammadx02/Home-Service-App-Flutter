import 'package:flutter/material.dart';





class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plant App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Discover Plants',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Plant List (You can replace this with a ListView or GridView)
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: 10, // Replace with your plant data length
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return PlantCard(
                  // Pass plant data to the PlantCard widget
                  // Example: plant: plants[index],
                );
              },
            ),
          ),

          // More sections and widgets can be added here
        ],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  // Add properties to accept plant data

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.green, // You can customize this
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display plant image
          Image.network(
            'https://example.com/plant_image.jpg', // Replace with image URL
            height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          // Display plant name
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Plant Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
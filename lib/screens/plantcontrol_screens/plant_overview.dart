import 'package:flutter/material.dart';
import 'package:fresh_connect_sih/screens/plantcontrol_screens/slurry_controller.dart';

class PlantOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Overview', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: const Color.fromARGB(255, 26, 62, 27),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                // Placeholder for the plant image
                Center(
                  child: Image.asset(
                    'assets/plant_diagram.png', // Replace with your actual image asset
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
                // Add tappable buttons or icons for components
                Positioned(
                  top: 100, // Adjust position to match your diagram
                  left: 50,
                  child: IconButton(
                    icon: Icon(Icons.water_drop, size: 40, color: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SlurryControllerPage()), // Replace with specific valve/tank page
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 200,
                  right: 50,
                  child: IconButton(
                    icon: Icon(Icons.bolt, size: 40, color: Colors.orange),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Placeholder()), // Replace with specific electricity page
                      );
                    },
                  ),
                ),
                // Add more Positioned widgets for other components
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Tap on components to view details or control them.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:fresh_connect_sih/screens/plantcontrol_screens/electricityvalves.dart';
// import 'package:fresh_connect_sih/screens/plantcontrol_screens/slurrycontrolvalves.dart';
// import 'package:fresh_connect_sih/screens/plantcontrol_screens/tank1valves.dart';
// import 'package:fresh_connect_sih/screens/plantcontrol_screens/tank2valves.dart';

// class Plantcontrols1 extends StatefulWidget {
//   const Plantcontrols1({super.key});

//   @override
//   State<Plantcontrols1> createState() => _Plantcontrols1State();
// }

// class _Plantcontrols1State extends State<Plantcontrols1> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Plant Control Dashboard',
//           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         backgroundColor: const Color.fromARGB(255, 26, 62, 27),
//       ),
//       body: Padding(
//         padding:  EdgeInsets.all(16.0),
//         child: GridView.count(
//           crossAxisCount: 2, // Two boxes per row
//           crossAxisSpacing: 16.0,
//           mainAxisSpacing: 16.0,
//           children: [
//             _buildBox(
//               icon: Icons.control_point,
//               title: 'Slurry Controller Valves',
//               color: Colors.green.shade700,
//               onTap: () {
//                 // Navigate to the Sell Biowaste Page
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => SlurryControlValves()));
//               },
//             ),
//             _buildBox(
//               icon: Icons.add_box,
//               title: 'Tank 1 Valves',
//               color: Colors.blue.shade700,
//               onTap: () {
//                 // Navigate to the Checklist Page
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => Tank1Valves()));
//               },
//             ),
//             _buildBox(
//               icon: Icons.add_box_outlined,
//               title: 'Tank 2 Valves',
//               color: Colors.orange.shade700,
//               onTap: () {
//                 // Navigate to the Community Details Page
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => Tank2Valves()));
//               },
//             ),
//             _buildBox(
//               icon: Icons.electric_bolt,
//               title: 'Electricity Valves',
//               color: Colors.purple.shade700,
//               onTap: () {
//                 // Navigate to the Current Harvest Page
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => ElectricityValves()));
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to build each box
//   Widget _buildBox({required IconData icon, required String title, required Color color, required VoidCallback onTap}) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(12.0),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black26,
//               blurRadius: 5.0,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 50, color: Colors.white),
//             SizedBox(height: 10),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class PlantControls1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Plant Controls'),
//         backgroundColor: Colors.green,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Plant Layout Image
//           Expanded(
//             flex: 2,
//             child: Center(
//               child: Image.asset(
//                 'assets/images/plant_control.jpg', // Add your plant layout image to assets and ensure it's in pubspec.yaml
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//           SizedBox(height: 20),

//           // Emoji Controls
//           Expanded(
//             flex: 1,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 // Water Drop Button
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/slurrycontrolvalves');
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '💧',
//                         style: TextStyle(fontSize: 50),
//                       ),
//                       Text(
//                         'Water Control',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Tank 1 Button
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/tank1valves');
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '🛢️',
//                         style: TextStyle(fontSize: 50),
//                       ),
//                       Text(
//                         'Tank 1',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Tank 2 Button
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/tank2valves');
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '🛢️',
//                         style: TextStyle(fontSize: 50),
//                       ),
//                       Text(
//                         'Tank 2',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Electricity Button
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/electricityvalves');
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '⚡',
//                         style: TextStyle(fontSize: 50),
//                       ),
//                       Text(
//                         'Electricity',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:fresh_connect_sih/screens/plantcontrol_screens/electricityvalves.dart';
import 'package:fresh_connect_sih/screens/plantcontrol_screens/slurrycontrolvalves.dart';
import 'package:fresh_connect_sih/screens/plantcontrol_screens/tank1valves.dart';
import 'package:fresh_connect_sih/screens/plantcontrol_screens/tank2valves.dart';
import 'package:fresh_connect_sih/screens/plantcontrol_screens/simulation.dart'; // Replace with actual import

class PlantControls1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Controls'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Plant Layout Image
          Expanded(
            flex: 2,
            child: Center(
              child: Image.asset(
                'assets/images/plant_control.jpg', // Add your plant layout image to assets and ensure it's in pubspec.yaml
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 20),

          // Emoji Controls
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Water Drop Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SlurryControlValves()), // Navigate to the Slurry Control page
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '💧',
                        style: TextStyle(fontSize: 50),
                      ),
                      Text(
                        'Water Control',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                // Tank 1 Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tank1Control()), // Navigate to Tank 1 Valves page
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '🛢️',
                        style: TextStyle(fontSize: 50),
                      ),
                      Text(
                        'Tank 1',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                // Tank 2 Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tank2Valves()), // Navigate to Tank 2 Valves page
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '🛢️',
                        style: TextStyle(fontSize: 50),
                      ),
                      Text(
                        'Tank 2',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                // Electricity Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ElectricityValves()), // Navigate to Electricity Valves page
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '⚡',
                        style: TextStyle(fontSize: 50),
                      ),
                      Text(
                        'Electricity',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Simulations1()), // Navigate to Tank 1 Valves page
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'S',
                        style: TextStyle(fontSize: 50),
                      ),
                      Text(
                        'Simulation',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


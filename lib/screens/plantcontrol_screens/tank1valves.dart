// import 'package:flutter/material.dart';

// class Tank1Valves extends StatelessWidget {
//   const Tank1Valves({Key? key}) : super(key: key);

//   void _showValveMessage(BuildContext context, String valveName) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text('$valveName Opened'),
//         content: const Text('The valve has been successfully opened.'),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(),
//             child: const Text('OK'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Tank 1 Valves',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: const Color.fromARGB(255, 26, 62, 27),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Container(
//               height: 150,
//               color: Colors.grey.shade300,
//               alignment: Alignment.center,
//               child: const Text(
//                 'Image Placeholder',
//                 style: TextStyle(color: Colors.black54, fontStyle: FontStyle.italic),
//               ),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 16.0,
//                 mainAxisSpacing: 16.0,
//                 children: [
//                   _buildValveButton(context, 'V4', Colors.green.shade700),
//                   _buildValveButton(context, 'V5', Colors.blue.shade700),
//                   _buildValveButton(context, 'F1', Colors.orange.shade700),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildValveButton(BuildContext context, String label, Color color) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: color,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15.0),
//         ),
//         padding: const EdgeInsets.all(20.0),
//         elevation: 5,
//       ),
//       onPressed: () => _showValveMessage(context, label),
//       child: Text(
//         label,
//         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class Tank1Valves extends StatefulWidget {
//   const Tank1Valves({Key? key}) : super(key: key);

//   @override
//   _Tank1ValvesState createState() => _Tank1ValvesState();
// }

// class _Tank1ValvesState extends State<Tank1Valves> {
//   String _imageAsset = 'assets/tank_initial.png'; // Initial tank image
//   final Map<String, String> _valveImages = {
//     'V4': 'assets/valve4_open.png', // Image when Valve 4 is opened
//     'V5': 'assets/valve5_open.png', // Image when Valve 5 is opened
//     'F1': 'assets/flow1_open.png',  // Image when Flow 1 is activated
//   };

//   void _updateValveState(String valveName) {
//     setState(() {
//       _imageAsset = _valveImages[valveName] ?? _imageAsset;
//     });
//     _showValveMessage(context, valveName);
//   }

//   void _showValveMessage(BuildContext context, String valveName) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text('$valveName Opened'),
//         content: const Text('The valve has been successfully opened, and the system is updated.'),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(),
//             child: const Text('OK'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Tank 1 Valves',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: const Color.fromARGB(255, 26, 62, 27),
//       ),
//       body: Column(
//         children: [
//           // Display the tank layout image
//           Container(
//             height: 200,
//             color: Colors.grey.shade300,
//             alignment: Alignment.center,
//             child: AnimatedSwitcher(
//               duration: const Duration(seconds: 1),
//               child: Image.asset(
//                 _imageAsset,
//                 key: ValueKey<String>(_imageAsset),
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           // Grid for Valve Controls
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 16.0,
//                 mainAxisSpacing: 16.0,
//                 children: [
//                   _buildValveButton(context, 'V4', Colors.green.shade700),
//                   _buildValveButton(context, 'V5', Colors.blue.shade700),
//                   _buildValveButton(context, 'F1', Colors.orange.shade700),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildValveButton(BuildContext context, String label, Color color) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: color,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15.0),
//         ),
//         padding: const EdgeInsets.all(20.0),
//         elevation: 5,
//       ),
//       onPressed: () => _updateValveState(label),
//       child: Text(
//         label,
//         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class Tank1Control extends StatefulWidget {
//   const Tank1Control({Key? key}) : super(key: key);

//   @override
//   _Tank1ControlState createState() => _Tank1ControlState();
// }

// class _Tank1ControlState extends State<Tank1Control> {
//   String _imageAsset = 'assets/tank1_initial.jpg'; // Initial tank image
//   int _tankVolume = 100; // Initial tank volume in liters
//   bool _bladeOn = false; // Initial blade state

//   final Map<String, String> _valveImages = {
//     'V4': 'assets/images/valve4_open.jpg', // Image when Biofuel outlet is open
//     'V5': 'assets/images/valve5_open.jpg', // Image when Manure outlet is open
//     'F1': 'assets/images/fan1_open.jpg',  // Image when blade is activated
//   };

//   void _updateValveState(String valveName) {
//     setState(() {
//       if (valveName == 'V4') {
//         // Open biofuel outlet, reduce tank volume by 30 liters
//         _tankVolume = (_tankVolume - 30).clamp(0, 100);
//       } else if (valveName == 'V5') {
//         // Open manure outlet, tank becomes empty
//         _tankVolume = 0;
//       } else if (valveName == 'F1') {
//         // Activate blade
//         _bladeOn = !_bladeOn;
//       }
//       _imageAsset = _valveImages[valveName] ?? _imageAsset;
//     });
//     _showValveMessage(context, valveName);
//   }

//   void _showValveMessage(BuildContext context, String valveName) {
//     String message = '';
//     if (valveName == 'V4') {
//       message = 'Biofuel outlet is now open. 30 liters of slurry have been released.';
//     } else if (valveName == 'V5') {
//       message = 'Manure outlet is now open. The tank is now empty.';
//     } else if (valveName == 'F1') {
//       message = _bladeOn ? 'The blade is now turned on.' : 'The blade is now turned off.';
//     }

//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text('$valveName Activated'),
//         content: Text(message),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(),
//             child: const Text('OK'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Tank 1 Control',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: const Color.fromARGB(255, 26, 62, 27),
//       ),
//       body: Column(
//         children: [
//           // Display the tank layout image
//           Container(
//             height: 200,
//             color: Colors.grey.shade300,
//             alignment: Alignment.center,
//             child: AnimatedSwitcher(
//               duration: const Duration(seconds: 1),
//               child: Image.asset(
//                 _imageAsset,
//                 key: ValueKey<String>(_imageAsset),
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           // Display tank volume
//           Container(
//             padding: const EdgeInsets.all(16.0),
//             decoration: BoxDecoration(
//               color: Colors.grey.shade100,
//               borderRadius: BorderRadius.circular(15.0),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.shade400,
//                   blurRadius: 5.0,
//                   offset: const Offset(0, 3),
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Tank Volume: $_tankVolume Liters',
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black87,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 Text(
//                   'Blade Status: ${_bladeOn ? "ON" : "OFF"}',
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black87,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           // Grid for Valve Controls
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 16.0,
//                 mainAxisSpacing: 16.0,
//                 children: [
//                   _buildValveButton(context, 'V4', Colors.green.shade700),
//                   _buildValveButton(context, 'V5', Colors.blue.shade700),
//                   _buildValveButton(context, 'F1', Colors.orange.shade700),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildValveButton(BuildContext context, String label, Color color) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: color,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15.0),
//         ),
//         padding: const EdgeInsets.all(20.0),
//         elevation: 5,
//       ),
//       onPressed: () => _updateValveState(label),
//       child: Text(
//         label,
//         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Tank1Control extends StatefulWidget {
  const Tank1Control({Key? key}) : super(key: key);

  @override
  _Tank1ControlState createState() => _Tank1ControlState();
}

class _Tank1ControlState extends State<Tank1Control> {
  String _imageAsset = 'assets/images/tank1_initial.jpg'; // Initial tank image
  int _tankVolume = 100; // Initial tank volume in liters
  bool _bladeOn = false; // Initial blade state
  double _temperature = 25.0; // Initial temperature in Celsius

  final Map<String, String> _valveImages = {
    'V4': 'assets/images/valve4_open.jpg', // Image when Biofuel outlet is open
    'V5': 'assets/images/valve5_open.jpg', // Image when Manure outlet is open
    'F1': 'assets/images/fan1_open.jpg',  // Image when blade is activated
  };

  void _updateValveState(String valveName) {
    setState(() {
      if (valveName == 'V4') {
        // Open biofuel outlet, reduce tank volume by 30 liters
        _tankVolume = (_tankVolume - 30).clamp(0, 100);
      } else if (valveName == 'V5') {
        // Open manure outlet, tank becomes empty
        _tankVolume = 0;
      } else if (valveName == 'F1') {
        // Activate or deactivate blade
        _bladeOn = !_bladeOn;
        _temperature = _bladeOn ? 100.0 : 25.0; // Update temperature
      }
      _imageAsset = _valveImages[valveName] ?? _imageAsset;
    });
    _showValveMessage(context, valveName);
  }

  void _showValveMessage(BuildContext context, String valveName) {
    String message = '';
    if (valveName == 'V4') {
      message = 'Biofuel outlet is now open. 30 liters of slurry have been released.';
    } else if (valveName == 'V5') {
      message = 'Manure outlet is now open. The tank is now empty.';
    } else if (valveName == 'F1') {
      message = _bladeOn ? 'The blade is now turned on. Temperature is rising to 100°C.' : 'The blade is now turned off. Temperature is back to 25°C.';
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('$valveName Activated'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tank 1 Control',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 26, 62, 27),
      ),
      body: Column(
        children: [
          // Display the tank layout image
          Container(
            height: 200,
            color: Colors.grey.shade300,
            alignment: Alignment.center,
            child: AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: Image.asset(
                _imageAsset,
                key: ValueKey<String>(_imageAsset),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Display tank volume and temperature
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 5.0,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tank Volume: $_tankVolume Liters',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Blade Status: ${_bladeOn ? "ON" : "OFF"}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Temperature: $_temperature°C',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Grid for Valve Controls
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  _buildValveButton(context, 'V4', Colors.green.shade700),
                  _buildValveButton(context, 'V5', Colors.blue.shade700),
                  _buildValveButton(context, 'F1', Colors.orange.shade700),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildValveButton(BuildContext context, String label, Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: const EdgeInsets.all(20.0),
        elevation: 5,
      ),
      onPressed: () => _updateValveState(label),
      child: Text(
        label,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}


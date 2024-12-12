// import 'package:flutter/material.dart';

// class Tank2Valves extends StatelessWidget {
//   const Tank2Valves({Key? key}) : super(key: key);

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
//           'Tank 2 Valves',
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
//                   _buildValveButton(context, 'V6', Colors.green.shade700),
//                   _buildValveButton(context, 'V7', Colors.blue.shade700),
//                   _buildValveButton(context, 'V8', Colors.orange.shade700),
//                   _buildValveButton(context, 'S1', Colors.purple.shade700),
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

// class Tank2Valves extends StatefulWidget {
//   const Tank2Valves({Key? key}) : super(key: key);

//   @override
//   _Tank2ValvesState createState() => _Tank2ValvesState();
// }

// class _Tank2ValvesState extends State<Tank2Valves> {
//   String _imageAsset = 'assets/tank2_initial.png'; // Initial tank image
//   final Map<String, String> _valveImages = {
//     'V6': 'assets/valve6_open.png', // Image when Valve 6 is opened
//     'V7': 'assets/valve7_open.png', // Image when Valve 7 is opened
//     'V8': 'assets/valve8_open.png', // Image when Valve 8 is opened
//     'S1': 'assets/images/valve_s1_open.png', // Image when Sensor/Valve S1 is activated
//     'T2C':'assets/images/t2c_open.jpg',
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
//           'Tank 2 Valves',
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
//                   _buildValveButton(context, 'V6', Colors.green.shade700),
//                   _buildValveButton(context, 'V7', Colors.blue.shade700),
//                   _buildValveButton(context, 'V8', Colors.orange.shade700),
//                   _buildValveButton(context, 'S1', Colors.purple.shade700),
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

class Tank2Valves extends StatefulWidget {
  const Tank2Valves({Key? key}) : super(key: key);

  @override
  _Tank2ValvesState createState() => _Tank2ValvesState();
}

class _Tank2ValvesState extends State<Tank2Valves> {
  String _imageAsset = 'assets/images/tank2_initial.jpg'; // Initial tank image
  int _tankVolume = 100; // Initial tank volume
  double _temperature = 25.0; // Initial temperature
  double _pressure = 0.0; // Initial pressure (assuming pressure starts at 0)
  final Map<String, String> _valveImages = {
    'V6': 'assets/images/valve6_open.jpg', // Image when Valve 6 is opened
    'V7': 'assets/images/valve7_open.jpg', // Image when Valve 7 is opened
    'V8': 'assets/images/valve8_open.jpg', // Image when Valve 8 is opened
    'S1': 'assets/images/s1_open.jpg', // Image when Sensor/Valve S1 is activated
    'T2C': 'assets/images/t2c_on.jpg', // Image with heater on (activated by S1)
    'T2E': 'assets/images/t2c_off.jpg', // Image with tank empty (after V7 is opened)
  };

  void _updateValveState(String valveName) {
    setState(() {
      if (valveName == 'S1') {
        _imageAsset = _valveImages['S1']!;
        _temperature = 100.0;
        _pressure = _pressure + 5.0; // Pressure increases significantly
      } else if (valveName == 'V6') {
        _tankVolume = _tankVolume ~/ 2; // Reduce tank volume by half
        if (_tankVolume == 0) {
          _imageAsset = _valveImages['V6']!;
        }
      } else if (valveName == 'V7') {
        _tankVolume = 15;
        _imageAsset = _valveImages['V7']!;
      } else if (valveName == 'V8') {
        _tankVolume = 0;
        _imageAsset = _valveImages['V8']!;
      } else {
        _imageAsset = _valveImages[valveName] ?? _imageAsset;
      }
    });
    _showValveMessage(context, valveName);
  }

  void _showValveMessage(BuildContext context, String valveName) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('$valveName Opened'),
        content: Text(
          'The valve has been successfully opened. \n'
          'Temperature: ${_temperature.toStringAsFixed(1)}°C\n'
          'Pressure: ${_pressure.toStringAsFixed(1)} units',
        ),
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
          'Tank 2 Valves',
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
          // Tank volume, temperature, and pressure display
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Tank Volume: $_tankVolume L',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Temperature: $_temperature°C',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Pressure: $_pressure units',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
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
                  _buildValveButton(context, 'V6', Colors.green.shade700),
                  _buildValveButton(context, 'V7', Colors.blue.shade700),
                  _buildValveButton(context, 'V8', Colors.orange.shade700),
                  _buildValveButton(context, 'S1', Colors.purple.shade700),
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
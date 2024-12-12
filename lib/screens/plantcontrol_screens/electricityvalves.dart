// import 'package:flutter/material.dart';

// class ElectricityValves extends StatelessWidget {
//   const ElectricityValves({Key? key}) : super(key: key);

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
//           'Electricity Valves',
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
//                   _buildValveButton(context, 'V9', Colors.green.shade700),
//                   _buildValveButton(context, 'V10', Colors.blue.shade700),
//                   _buildValveButton(context, 'V11', Colors.orange.shade700),
//                   _buildValveButton(context, 'V12', Colors.purple.shade700),
//                   _buildValveButton(context, 'S2', Colors.red.shade700),
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

// class ElectricityValves extends StatefulWidget {
//   const ElectricityValves({Key? key}) : super(key: key);

//   @override
//   _ElectricityValvesState createState() => _ElectricityValvesState();
// }

// class _ElectricityValvesState extends State<ElectricityValves> {
//   String _imageAsset = 'assets/electricity_initial.png'; // Initial layout image
//   final Map<String, String> _valveImages = {
//     'V9': 'assets/valve9_open.png',  // Image for Valve 9
//     'V10': 'assets/valve10_open.png', // Image for Valve 10
//     'V11': 'assets/valve11_open.png', // Image for Valve 11
//     'V12': 'assets/valve12_open.png', // Image for Valve 12
//     'S2': 'assets/sensor_s2_active.png', // Image for Sensor/Valve S2
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
//           'Electricity Valves',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: const Color.fromARGB(255, 26, 62, 27),
//       ),
//       body: Column(
//         children: [
//           // Dynamic image for electricity layout
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
//                   _buildValveButton(context, 'V9', Colors.green.shade700),
//                   _buildValveButton(context, 'V10', Colors.blue.shade700),
//                   _buildValveButton(context, 'V11', Colors.orange.shade700),
//                   _buildValveButton(context, 'V12', Colors.purple.shade700),
//                   _buildValveButton(context, 'S2', Colors.red.shade700),
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

class ElectricityValves extends StatefulWidget {
  const ElectricityValves({Key? key}) : super(key: key);

  @override
  _ElectricityValvesState createState() => _ElectricityValvesState();
}

class _ElectricityValvesState extends State<ElectricityValves> {
  String _imageAsset = 'assets/images/electricity_initial.png'; // Initial layout image
  int _gasVolume = 100; // Initial gas volume in the container (liters)
  int _temperature = 25; // Initial temperature (Celsius)
  int _voltage = 0; // Initial voltage generated (volts)

  final Map<String, String> _valveImages = {
    'V9': 'assets/images/valve9_open.jpg', 
    'V10': 'assets/images/valve10_open.jpg', 
    'V11': 'assets/images/valve11_open.jpg', 
  };

  void _updateValveState(String valveName) {
    setState(() {
      if (valveName == 'V9') {
        // Simulate gas flow into the container
        _gasVolume = (_gasVolume - 30).clamp(0, 100);
        _temperature = 50; // Heat the container to 50°C
      } else if (valveName == 'V10') {
        // Simulate heating and interaction with solar energy
        _temperature = 100; // Heat rises to 100°C
        _voltage += 20; // Simulate electricity generation
      } else if (valveName == 'V11') {
        // Simulate final electricity generation
        _voltage += 50; // Voltage increases further
        _gasVolume = 0; // Gas is depleted
        _temperature = 25; // Temperature normalizes
      } 
      _imageAsset = _valveImages[valveName] ?? _imageAsset;
    });

    _showValveMessage(context, valveName);
  }

  void _showValveMessage(BuildContext context, String valveName) {
    String message = '';
    if (valveName == 'V9') {
      message = 'Gas flows into the container. Volume decreases, and temperature starts rising.';
    } else if (valveName == 'V10') {
      message = 'The container is heated, and electricity is generated by solar interaction.';
    } else if (valveName == 'V11') {
      message = 'Electricity is generated. Gas volume is depleted, and temperature normalizes.';
    } else if (valveName == 'V12') {
      message = 'Additional action performed. Voltage increased slightly.';
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
          'Electricity Valves',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 26, 62, 27),
      ),
      body: Column(
        children: [
          // Dynamic image for electricity layout
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
          // Display metrics: gas volume, temperature, voltage
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
                  'Gas Volume: $_gasVolume Liters',
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
                const SizedBox(height: 10),
                Text(
                  'Voltage: $_voltage V',
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
                  _buildValveButton(context, 'V9', Colors.green.shade700),
                  _buildValveButton(context, 'V10', Colors.blue.shade700),
                  _buildValveButton(context, 'V11', Colors.orange.shade700),
                  _buildValveButton(context, 'V12', Colors.purple.shade700),
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
        shape: const CircleBorder(), // Rounded button shape
        padding: const EdgeInsets.all(8.0),
        elevation: 3,
      ),
      onPressed: () => _updateValveState(label),
      child: Text(
        label,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

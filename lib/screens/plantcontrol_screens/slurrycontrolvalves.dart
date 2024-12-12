// import 'package:flutter/material.dart';

// class SlurryControlValves extends StatefulWidget {
//   const SlurryControlValves({Key? key}) : super(key: key);

//   @override
//   _SlurryControlValvesState createState() => _SlurryControlValvesState();
// }

// class _SlurryControlValvesState extends State<SlurryControlValves> {
//   String _imageAsset = 'assets/images/plant_control.jpg'; // Initial plant image
//   int _containerVolume = 50; // Initial slurry volume in the container
//   int _controllerVolume = 0; // Initial slurry volume in the controller

//   final Map<String, String> _valveImages = {
//     'V1': 'assets/images/valve1_open.jpg', // Image when Valve 1 is opened
//     'V2': 'assets/images/valve2_open.jpg', // Image when Valve 2 is opened
//     'V3': 'assets/images/valve3_open.jpg', // Image when Valve 3 is opened
//   };

//   void _updateValveState(String valveName) {
//     setState(() {
//       if (valveName == 'V1') {
//         _containerVolume = 0;
//         _controllerVolume = 50;
//       } else if (valveName == 'V2') {
//         _controllerVolume = 25;
//       } else if (valveName == 'V3') {
//         _controllerVolume = 0;
//       }
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
//           'Slurry Control Valves',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: const Color.fromARGB(255, 26, 62, 27),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           children: [
//             // Valve Buttons on the Left
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 _buildValveButton(context, 'V1', const Color.fromARGB(255, 33, 150, 243)),
//                 const SizedBox(height: 20),
//                 _buildValveButton(context, 'V2', const Color.fromARGB(255, 76, 175, 80)),
//                 const SizedBox(height: 20),
//                 _buildValveButton(context, 'V3', const Color.fromARGB(255, 255, 87, 34)),
//               ],
//             ),
//             const SizedBox(width: 20),
//             // Slurry Display and Layout Image
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Plant Layout Image
//                   Container(
//                     height: 200,
//                     color: Colors.grey.shade300,
//                     alignment: Alignment.center,
//                     child: AnimatedSwitcher(
//                       duration: const Duration(seconds: 1),
//                       child: Image.asset(
//                         _imageAsset,
//                         key: ValueKey<String>(_imageAsset),
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   // Dynamic Slurry Volumes
//                   Container(
//                     padding: const EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color: Colors.grey.shade100,
//                       borderRadius: BorderRadius.circular(15.0),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.shade400,
//                           blurRadius: 5.0,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Slurry Container Volume: $_containerVolume Liters',
//                           style: const TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black87,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           'Slurry Controller Volume: $_controllerVolume Liters',
//                           style: const TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black87,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
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
//         shape: const CircleBorder(),
//         padding: const EdgeInsets.all(20.0),
//         elevation: 5,
//       ),
//       onPressed: () => _updateValveState(label),
//       child: Text(
//         label,
//         style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class SlurryControlValves extends StatefulWidget {
  const SlurryControlValves({Key? key}) : super(key: key);

  @override
  _SlurryControlValvesState createState() => _SlurryControlValvesState();
}

class _SlurryControlValvesState extends State<SlurryControlValves> {
  String _imageAsset = 'assets/images/plant_control.jpg'; // Initial plant image
  String _barChartAsset = 'assets/images/barchart_initial.jpg'; // Initial bar chart image
  int _containerVolume = 50; // Initial slurry volume in the container
  int _controllerVolume = 0; // Initial slurry volume in the controller

  final Map<String, String> _valveImages = {
    'V1': 'assets/images/valve1_open.jpg', // Image when Valve 1 is opened
    'V2': 'assets/images/valve2_open.jpg', // Image when Valve 2 is opened
    'V3': 'assets/images/valve3_open.jpg', // Image when Valve 3 is opened
  };

  final Map<String, String> _barChartImages = {
    'V1': 'assets/images/barchart_v1.jpg', // Bar chart when Valve 1 is pressed
    'V2': 'assets/images/barchart_v2.jpg', // Bar chart when Valve 2 is pressed
    'V3': 'assets/images/barchart_v3.jpg', // Bar chart when Valve 3 is pressed
  };

  void _updateValveState(String valveName) {
    setState(() {
      if (valveName == 'V1') {
        _containerVolume = 0;
        _controllerVolume = 50;
      } else if (valveName == 'V2') {
        _controllerVolume = 25;
      } else if (valveName == 'V3') {
        _controllerVolume = 0;
      }
      _imageAsset = _valveImages[valveName] ?? _imageAsset;
      _barChartAsset = _barChartImages[valveName] ?? _barChartAsset;
    });
    _showValveMessage(context, valveName);
  }

  void _showValveMessage(BuildContext context, String valveName) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('$valveName Opened'),
        content: const Text('The valve has been successfully opened, and the system is updated.'),
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
          'Slurry Control Valves',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 26, 62, 27),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                // Valve Buttons on the Left
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildValveButton(context, 'V1', const Color.fromARGB(255, 33, 150, 243)),
                    const SizedBox(height: 20),
                    _buildValveButton(context, 'V2', const Color.fromARGB(255, 76, 175, 80)),
                    const SizedBox(height: 20),
                    _buildValveButton(context, 'V3', const Color.fromARGB(255, 255, 87, 34)),
                  ],
                ),
                const SizedBox(width: 20),
                // Slurry Display and Layout Image
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Plant Layout Image
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
                      // Dynamic Slurry Volumes
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
                              'Slurry Container Volume: $_containerVolume Liters',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Slurry Controller Volume: $_controllerVolume Liters',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Dynamic Bar Chart Image
            Container(
              height: 200,
              color: Colors.grey.shade300,
              alignment: Alignment.center,
              child: AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                child: Image.asset(
                  _barChartAsset,
                  key: ValueKey<String>(_barChartAsset),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildValveButton(BuildContext context, String label, Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20.0),
        elevation: 5,
      ),
      onPressed: () => _updateValveState(label),
      child: Text(
        label,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

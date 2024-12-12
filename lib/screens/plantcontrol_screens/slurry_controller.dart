import 'package:flutter/material.dart';

class SlurryControllerPage extends StatefulWidget {
  const SlurryControllerPage({super.key});

  @override
  State<SlurryControllerPage> createState() => _SlurryControllerPageState();
}

class _SlurryControllerPageState extends State<SlurryControllerPage> with SingleTickerProviderStateMixin {
  // Valve status
  bool isV1Open = false;
  bool isV2Open = false;
  bool isV3Open = false;

  // Animation controller
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // Method to toggle valve status
  void toggleValve(String valve) {
    setState(() {
      if (valve == 'V1') {
        isV1Open = !isV1Open;
      } else if (valve == 'V2') {
        isV2Open = !isV2Open;
      } else if (valve == 'V3') {
        isV3Open = !isV3Open;
      }
    });

    // Play animation
    _animationController.forward(from: 0.0);

    // Show popup feedback
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Valve $valve"),
        content: Text(
          isV1Open || isV2Open || isV3Open
              ? 'Valve $valve has been opened!'
              : 'Valve $valve has been closed!',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('OK'),
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
          'Slurry Controller',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 26, 62, 27),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Control Slurry Valves',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildValveButton('V1', isV1Open, Colors.green),
                _buildValveButton('V2', isV2Open, Colors.blue),
                _buildValveButton('V3', isV3Open, Colors.orange),
              ],
            ),
            SizedBox(height: 30),
            // Placeholder for the animation
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _animationController.value * 6.28, // Rotates 360 degrees
                  child: Icon(
                    Icons.autorenew,
                    size: 100,
                    color: Colors.grey.shade400,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build valve buttons
  Widget _buildValveButton(String valve, bool isOpen, Color color) {
    return GestureDetector(
      onTap: () => toggleValve(valve),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: isOpen ? color : Colors.grey.shade300,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4.0,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Icon(
              isOpen ? Icons.toggle_on : Icons.toggle_off,
              size: 50,
              color: isOpen ? Colors.white : Colors.black54,
            ),
          ),
          SizedBox(height: 8),
          Text(
            valve,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

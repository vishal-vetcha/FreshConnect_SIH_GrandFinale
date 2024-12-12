import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Simulations1 extends StatefulWidget {
  const Simulations1({Key? key}) : super(key: key);

  @override
  State<Simulations1> createState() => _Simulations1State();
}

class _Simulations1State extends State<Simulations1> {
  late VideoPlayerController _controller;
  bool _isPlaying = false; // State to manage ON/OFF toggle

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/simulation.mp4')
      ..initialize().then((_) {
        setState(() {}); // Ensure UI updates after video initializes
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayback(bool isOn) {
    setState(() {
      _isPlaying = isOn;
      if (_isPlaying) {
        _controller.play();
      } else {
        _controller.pause();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simulation',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Display the video
          if (_controller.value.isInitialized)
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          else
            const Center(child: CircularProgressIndicator()),

          const SizedBox(height: 20),

          // ON/OFF Toggle Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'OFF',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Switch(
                value: _isPlaying,
                activeColor: Colors.green,
                onChanged: _togglePlayback,
              ),
              const Text(
                'ON',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

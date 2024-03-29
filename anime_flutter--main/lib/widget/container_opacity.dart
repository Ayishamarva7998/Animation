// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ConatinerOpac extends StatefulWidget {
  const ConatinerOpac({Key? key}) : super(key: key);

  @override
    createState() => _ConatinerOpacState();
}

class _ConatinerOpacState extends State<ConatinerOpac> {
  double opacityLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedOpacity widget for fading in and out
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: opacityLevel,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.blue, // Set the color you desire
              ),
            ),
            const SizedBox(height: 20),
            // ElevatedButton to trigger opacity animation
            ElevatedButton(
              onPressed: () {
                // Toggle between 0 and 1 opacity
                setState(() {
                  opacityLevel = opacityLevel == 0 ? 1 : 0;
                });
              },
              child: const Text("Toggle Opacity"),
            ),
          ],
        ),
      ),
    );
  }
}

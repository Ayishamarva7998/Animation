// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({Key? key}) : super(key: key);

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  final double _opacity = 1;
  double _margin = 0;
  final double _width = 200;
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container Example'),
      ),
      body: Center(
        child: AnimatedContainer(
          margin: EdgeInsets.all(_margin),
          width: _width,
          color: _color,
          duration: const Duration(seconds: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _margin = 50;
                    _color = Colors.blue; 
                  });
                },
                child: const Text(
                  "Animate",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                // make it deep purple shades
                Color(0xFF311B92),
                Color(0xFF512DA8),
                Color(0xFF673AB7),
                Color(0xFF9575CD),
              ],
            ),
          ),
          child: const StartScreen()
        ),
      ),
    ),
  );
}
import 'dart:ui';

import 'package:flutter/material.dart';

double _sigmaX = 1.0; // from 0-10
double _sigmaY = 1.0; // from 0-10
double _opacity = 0.23; // from 0-1.0
double _opacity2 = 0.5; // from 0-1.0

class BeanBlurred extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/coffee_beans.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
            child: Container(
              color: Colors.white.withOpacity(_opacity),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
            child: Container(
              color: Colors.grey[200]?.withOpacity(0.3),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
            child: Container(
              color: Colors.black.withOpacity(_opacity2),
            ),
          ),
        ],
      ),
    );
  }
}

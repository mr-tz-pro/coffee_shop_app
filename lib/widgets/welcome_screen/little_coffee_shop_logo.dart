import 'package:flutter/material.dart';

class CoffeeShopLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          decoration: new BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Colors.white,
              width: 3,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: _width * 0.02),
                child: Text(
                  'Little'.toUpperCase(),
                  style: TextStyle(
                    letterSpacing: 3,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: _width * 0.02),
                child: Text(
                  'Coffee'.toUpperCase(),
                  style: TextStyle(
                    letterSpacing: 3,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                'Shop'.toUpperCase(),
                style: TextStyle(
                  letterSpacing: 3,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

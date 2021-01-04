import 'package:coffee_shop_app/screens/menu_screen.dart';
import 'package:coffee_shop_app/widgets/welcome_screen/little_coffee_shop_logo.dart';

import '../widgets/welcome_screen/bean_blured.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final introTxt = 'The Little Coffee Shop serves speciality\n'
      'coffee, fancy grilled cheese sandwiches,\n'
      'scratch cooking, craft ales, and cider.';
  @override
  Widget build(BuildContext context) {
    Size _siz = MediaQuery.of(context).size;
    double _width = _siz.width;
    // double _height = _siz.height;

    return Stack(
      children: [
        BeanBlurred(),
        Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 25),
          child: Container(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Container(
                      width: _width * 0.3,
                      height: _width * 0.3,
                      child: CoffeeShopLogo(),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: _width * 0.75,
                        child: Text(
                          introTxt,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: _width * 0.04,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: _width * 0.45,
                        height: _width * 0.1,
                        child: OutlineButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuScreen(),
                              ),
                            );
                          },
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          highlightedBorderColor: Colors.white.withOpacity(0.7),
                          child: Text(
                            'Get Started!',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: _width * 0.045,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

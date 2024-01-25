import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 390,
          height: 844,
          color: Color(0xFFDA5E48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tech',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Me',
                    style: TextStyle(
                      color: Color(0xFF3F3D56),
                      fontSize: 38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Accelerating Tech with confidence',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.90),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'East Africa’s Biggest\nTech Con Hub',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFCACACA),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                  width: 20), // Adjust the spacing between text and text box
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 150,
                  height: 100,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Your Text Box',
                      style: TextStyle(
                        color: Color(0xFF2F2E41),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

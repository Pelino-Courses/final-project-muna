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
      body: Container(
        width: 390,
        height: 844,
        color: Color(0xFFDA5E48),
        child: Stack(
          children: [
            Positioned(
              left: 25,
              top: 13,
              child: Container(
                width: 338,
                height: 21.43,
                // ... (existing code for PhoneNotification)
              ),
            ),
            Positioned(
              left: 10,
              top: 304,
              child: Container(
                width: 370.21,
                height: 272,
                // ... (existing code for UndrawConferenceRe2yld1)
              ),
            ),
            Positioned(
              left: 117,
              top: 99,
              child: Text(
                'Tech',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 180,
              top: 99,
              child: Text(
                'Me',
                style: TextStyle(
                  color: Color(0xFF3F3D56),
                  fontSize: 38,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 54,
              top: 166,
              child: Text(
                'Accelerating Tech with confidence',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.90),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              left: 116,
              top: 190,
              child: Text(
                'East Africa’s Biggest\nTech Con Hub',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFCACACA),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              bottom: 20, // Adjust the bottom margin as needed
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    print('Join Now pressed!');
                    // Add any additional functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Join Now',
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
    );
  }
}

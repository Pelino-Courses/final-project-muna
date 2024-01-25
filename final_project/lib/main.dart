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
                //position: DecorationPosition.background,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 248,
                      top: 0,
                      child: Container(
                        width: 21.43,
                        height: 21.43,
                        padding: EdgeInsets.fromLTRB(0.80, 2.14, 0.80, 2.14),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Container(
                          width: 19.82,
                          height: 17.14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 316.57,
                      top: 0,
                      child: Container(
                        width: 21.43,
                        height: 21.43,
                        padding: EdgeInsets.fromLTRB(0, 5.36, 0, 5.36),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Container(
                          width: 21.43,
                          height: 10.71,
                          color: Color(0xFFF2F2F2),
                        ),
                      ),
                    ),
                    // Add similar code for other elements in the PhoneNotification
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        '23:59',
                        style: TextStyle(
                          color: Color(0xFFF5F5F5),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 304,
              child: Container(
                width: 370.21,
                height: 272,
                // position: DecorationPosition.background,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                ),
                child: Stack(
                  children: [
                    // Add similar code for other elements in the UndrawConferenceRe2yld1
                  ],
                ),
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
              left: 25,
              top: 724,
              child: Container(
                width: 340,
                height: 60,
                // position: DecorationPosition.background,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF2F2E41),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'Join Now',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.90),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

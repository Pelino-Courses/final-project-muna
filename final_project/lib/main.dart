import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390,
        height: 844,
        color: const Color(0xFFDA5E48),
        child: Stack(
          children: [
            const Positioned(
              left: 25,
              top: 13,
              child: SizedBox(
                width: 338,
                height: 21.43,
                // ... (existing code for PhoneNotification)
              ),
            ),
            const Positioned(
              left: 10,
              top: 304,
              child: SizedBox(
                width: 370.21,
                height: 272,
                // ... (existing code for UndrawConferenceRe2yld1)
              ),
            ),
            const Positioned(
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
            const Positioned(
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
            const Positioned(
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
            const Positioned(
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
              top: 0,
              right: 0,
              bottom: 0,
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
            Positioned(
              bottom: 20,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    print('Join Now pressed!');
                    // Add any additional functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
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

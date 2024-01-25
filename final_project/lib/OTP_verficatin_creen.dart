import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const HomeApp());
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  late Timer _timer;
  int _timerDuration = 240; // 4 minutes in seconds
  final StreamController<int> _timerController = StreamController<int>();

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timerDuration > 0) {
          _timerDuration--;
          _timerController.add(_timerDuration);
        } else {
          _timer.cancel();
          // Add your logic when the timer reaches 0
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _timerController.close();
    super.dispose();
  }

  String getFormattedTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: null,
        body: Container(
          color: Colors.red,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 70,
                    ),
                    children: [
                      TextSpan(
                          text: 'Tech', style: TextStyle(color: Colors.white)),
                      TextSpan(
                          text: 'Me', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                const Text(
                  'OTP verification',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                StreamBuilder<int?>(
                  stream: _timerController.stream,
                  initialData: _timerDuration,
                  builder: (context, snapshot) {
                    return Text(
                      ' ${getFormattedTime(snapshot.data ?? _timerDuration)}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black,
                          height: 2.0),
                    );
                  },
                ),
                const SizedBox(height: 20),
                const Text(
                  'Enter the code \n    from sms',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    // Add your submission logic here
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                ),
                const SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    children: [
                      const TextSpan(
                        text: "Didn't receive the code? ",
                      ),
                      TextSpan(
                        text: 'Resend',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Add your resend code logic here
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

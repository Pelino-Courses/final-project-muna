import 'package:flutter/material.dart';
import 'package:techme/Login.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PasswordRecoverScreen extends StatelessWidget {
  const PasswordRecoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    var tOrangeColor;
    var tWhiteColor;
    var tDarkBlueColor;
    var tLightBlueColor;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: tOrangeColor,
            ),
            child: Stack(
              children: [
                SizedBox(
                  height: height * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Tech",
                            style: GoogleFonts.poppins(
                                color: tWhiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 40),
                          ),
                          Text(
                            "Me",
                            style: GoogleFonts.poppins(
                              color: tDarkBlueColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "If the email or phone number is",
                        style: GoogleFonts.poppins(
                          color: tWhiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "registered you will receive a code",
                        style: GoogleFonts.poppins(
                          color: tWhiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: width * 0.85,
                        child: Column(
                          children: [
                            TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: tWhiteColor,
                                hintText: 'enter your email / phone number',
                                hintStyle: GoogleFonts.poppins(
                                  color: tLightBlueColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: tWhiteColor, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: tWhiteColor, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.1,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const LoginScreen());
                        },
                        child: Container(
                          width: width * 0.85,
                          height: 60,
                          decoration: BoxDecoration(
                            color: tDarkBlueColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "recover",
                              style: GoogleFonts.poppins(
                                color: tWhiteColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: SizedBox(
                    width: width * 0.8,
                    height: height * 0.3,
                    child: SvgPicture.asset(
                      'assets/svg/about.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

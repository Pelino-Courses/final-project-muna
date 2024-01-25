import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:techme/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:techme/screens/register_screen.dart';
import 'package:techme/screens/otp_screen.dart';
import 'package:techme/screens/password_recover.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: tOrangeColor,
          ),
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
                height: 20,
              ),
              Container(
                width: width * 0.9,
                decoration: BoxDecoration(
                  color: tWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(3, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 40,
                        ),
                        child: Text(
                          "Login",
                          style: GoogleFonts.poppins(
                            color: tDarkBlueColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Username",
                              style: GoogleFonts.poppins(
                                color: tDarkBlueColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'enter your username',
                                hintStyle: GoogleFonts.poppins(
                                  color: tLightBlueColor,
                                ),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: tLightBlueColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: GoogleFonts.poppins(
                                color: tDarkBlueColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'enter your password',
                                hintStyle: GoogleFonts.poppins(
                                  color: tLightBlueColor,
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: tLightBlueColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => const PasswordRecoverScreen());
                          },
                          child: Text(
                            "Forgot your Password?",
                            style: GoogleFonts.poppins(
                              color: tLightBlueColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const OTPScreen());
                        },
                        child: Container(
                          width: width,
                          height: 50,
                          decoration: BoxDecoration(
                            color: tOrangeColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: const Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                color: tWhiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 40,
                        ),
                        child: Container(
                          width: width,
                          height: 1,
                          color: tLightBlueColor,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(
                              LucideIcons.github,
                              color: tWhiteColor,
                              size: 30,
                            ),
                          ),
                          Icon(
                            LucideIcons.twitter,
                            color: tDarkBlueColor,
                            size: 30,
                          ),
                          Icon(
                            LucideIcons.mail,
                            color: tDarkBlueColor,
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Not yet a  member?",
                    style: GoogleFonts.poppins(
                      color: tGreyColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const RegisterScreen());
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        color: tDarkBlueColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

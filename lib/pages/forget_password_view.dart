import 'package:fitness_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height * 0.55,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/black/14.jpg'))),
                ),
                headerWidget(),
              ],
            ),
            resetForm()
          ],
        ),
      ),
    );
  }

  Padding resetForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Email",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Color(0xFF707070), fontSize: 16),
              hintText: "Enter your email",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF707070),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF707070),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          resetButton()
        ],
      ),
    );
  }

  Center resetButton() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: kFirstColor,
              ),
              height: 50,
              width: Get.width * 0.7,
              child: const Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () => Get.back(),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.transparent,
                border: Border.all(width: 2, color: Colors.white),
              ),
              height: 50,
              width: Get.width * 0.7,
              child: const Center(
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container headerWidget() {
    return Container(
      height: Get.height * 0.55,
      width: Get.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [kThirdColor, Colors.transparent])),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            RichText(
              text: const TextSpan(
                  text: 'HARD\t',
                  style: TextStyle(
                      fontFamily: 'Bebas', fontSize: 30, letterSpacing: 5),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'ELEMENT',
                      style: TextStyle(fontFamily: 'Bebas', color: kFirstColor),
                    )
                  ]),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reset Password Now",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Send a password reset email \n to"
                    " the following email",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

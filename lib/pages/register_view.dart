import 'package:fittness_app/routes/app_pages.dart';
import 'package:fittness_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(children: [
          headerWidget(),
          registerForm(),
          registerButton(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () => Get.toNamed(Routes.login),
                child: const Text(
                  "Already have an account? Login now",
                  style: TextStyle(color: kFirstColor, fontSize: 14),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  Center registerButton() => Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: kFirstColor,
                ),
                height: 50,
                width: Get.width * 0.7,
                child: const Center(
                  child: Text(
                    "Register",
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
  Stack headerWidget() => Stack(
        children: [
          Container(
            height: Get.height * 0.55,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/black/4.jpg'))),
          ),
          Container(
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
                            fontFamily: 'Bebas',
                            fontSize: 30,
                            letterSpacing: 5),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'ELEMENT',
                            style: TextStyle(
                                fontFamily: 'Bebas', color: kFirstColor),
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
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Train and live the new experience of \nexercising"
                          " at home",
                          style: TextStyle(fontSize: 20),
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
  Padding registerForm() => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Color(0xFF707070), fontSize: 16),
                hintText: "Enter your name",
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
            SizedBox(height: 20),
            Text(
              "Email",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Color(0xFF707070), fontSize: 16),
                hintText: "Enter your Email",
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
            SizedBox(height: 20),
            Text(
              "Phone",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Color(0xFF707070), fontSize: 16),
                hintText: "+ Enter your phone number",
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
            SizedBox(height: 20),
            Text(
              "Password",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Color(0xFF707070), fontSize: 16),
                hintText: "Enter your password",
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
            SizedBox(height: 20),
            Text(
              "Confirm Password",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Color(0xFF707070), fontSize: 16),
                hintText: "Enter your password",
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
            SizedBox(height: 10),
            Text(
              "By Signing up, I agree to this app User Agreement and Privacy policy.",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 15),
          ],
        ),
      );
}

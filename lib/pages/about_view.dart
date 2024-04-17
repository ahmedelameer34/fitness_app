import 'package:fitness_app/routes/app_pages.dart';
import 'package:fitness_app/shared/option_widget.dart';
import 'package:fitness_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/black/16.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
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
                          "About You",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "We want to know more about you, follow the next \nsteps to complete the information",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  ValueBuilder<dynamic>(
                    initialValue: 0,
                    builder: (value, updateFn) => Row(
                      children: [
                        OptionWidget(
                          state: "I'm\nBeginner",
                          detail: "I have trained several times",
                          enable: value == 0 ? true : false,
                          onTap: () => updateFn(0),
                        ),
                        const SizedBox(width: 20),
                        OptionWidget(
                          state: "I'm\nExpert",
                          detail: "I have trained more times",
                          enable: value == 1 ? true : false,
                          onTap: () => updateFn(1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  buildFooter(),
                  const SizedBox(height: 30)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget buildFooter() {
  return Row(
    children: [
      TextButton(
        onPressed: () => Get.back(),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Center(
            child: Text(
              "Back",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
      const Spacer(),
      TextButton(
        onPressed: () => Get.toNamed(Routes.login),
        child: Container(
          height: 40,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: kFirstColor,
          ),
          child: const Center(
            child: Text(
              "Next",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

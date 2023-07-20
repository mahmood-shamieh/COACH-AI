import 'dart:ui';

import 'package:ai_couch/controllers/intro_screen_controller.dart';
import 'package:ai_couch/controllers/signin_screen_controller.dart';
import 'package:ai_couch/screens/signin_screen.dart';
import 'package:ai_couch/screens/signup_screen.dart';
import 'package:ai_couch/widgets/action_button_with_loading.dart';
import 'package:ai_couch/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroScreenController>(
      init: Get.put(IntroScreenController()),
      builder: (controller) => Scaffold(
        body: Stack(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/background.png'),
                  ),
                ),
              ),
            ),
            // BackdropFilter(
            //   filter: ImageFilter.blur(
            //     sigmaX: 15,
            //     sigmaY: 15,
            //   ),
            //   child: Container(
            //     color: Theme.of(context).shadowColor.withOpacity(0.1),
            //     width: double.infinity,
            //     height: double.infinity,
            //   ),
            // ),
            Center(
              child: FittedBox(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                      color: Theme.of(context).shadowColor.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextWidget(
                        text: 'COACH AI',
                        fontWeight: FontWeight.bold,
                        size: 24,
                        color: Theme.of(context).buttonColor,
                        textAlign: TextAlign.center,
                      ),
                      TextWidget(
                        text: 'ALL EXERCISES',
                        fontWeight: FontWeight.bold,
                        size: 24,
                        color: Theme.of(context).buttonColor,
                        textAlign: TextAlign.center,
                      ),
                      TextWidget(
                        text: 'IN ONE PLACE',
                        fontWeight: FontWeight.bold,
                        size: 24,
                        color: Theme.of(context).buttonColor,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                      Visibility(
                        visible: controller.loading.value,
                        child: CircularProgressIndicator(
                          color: Theme.of(context).buttonColor,
                        ),
                      ),
                      Visibility(
                        visible: !controller.loading.value,
                        child: Column(
                          children: [
                            ActionButtonWithLoading(
                              text: 'SIGN IN',
                              action: () => Get.to(() => SignInScreen()),
                            ),
                            ActionButtonWithLoading(
                              text: 'SIGN UP',
                              action: () => Get.to(() => SignUpScreen()),
                            )
                          ],
                        ),
                      )
                    ],
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

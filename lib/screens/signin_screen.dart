import 'package:ai_couch/controllers/signin_screen_controller.dart';
import 'package:ai_couch/screens/home_screen.dart';
import 'package:ai_couch/screens/scaffold_widget.dart';
import 'package:ai_couch/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../widgets/action_button_with_loading.dart';
import '../widgets/text_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInScreenController>(
      init: Get.put(SignInScreenController()),
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
                        text: 'USERNAME',
                        fontWeight: FontWeight.bold,
                        size: 18,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        textAlign: TextAlign.center,
                      ),
                      TextFieldWidget(
                        hintText: 'username'.capitalizeFirst!,
                        textAlign: TextAlign.center,
                        textInputType: TextInputType.emailAddress,
                      ),
                      TextWidget(
                        text: 'PASSWORD',
                        fontWeight: FontWeight.bold,
                        size: 18,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        textAlign: TextAlign.center,
                      ),
                      TextFieldWidget(
                        hintText: 'password'.capitalizeFirst!,
                        textAlign: TextAlign.center,
                        textInputType: TextInputType.emailAddress,
                      ),
                      ActionButtonWithLoading(
                        text: 'Submit',
                        action: () => Get.offAll(() => ScaffoldWidget()),
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

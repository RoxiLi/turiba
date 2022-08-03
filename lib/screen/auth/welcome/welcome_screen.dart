import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:turiba/screen/auth/login/login_screen.dart';
import 'package:turiba/screen/auth/onboarding/onboarding_screen.dart';
import 'package:turiba/utils/app_color.dart';
import 'package:turiba/utils/app_images.dart';
import 'package:turiba/utils/app_string.dart';
import 'package:turiba/utils/text_style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, // optional
    ));
    return Scaffold(
      backgroundColor: AppColors.appBlackColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Spacer(),
            Text(
              AppString.appName,
              style: textStylePTMono(
                color: AppColors.white,
                fontSize: 42,
              ),
            ),
            Text(
              AppString.routesBaths,
              style: textStyleAbel(
                  color: AppColors.white, fontSize: 12, letterSpacing: 3),
            ),
            Image.asset(
              AppImages.appLogo,
              height: Get.height * 0.5,
            ),
            InkWell(
              onTap: () {
                HapticFeedback.heavyImpact();
                Get.to(() => const OnboardingScreen());
              },
              child: Container(
                width: Get.width * 0.84,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Center(
                  child: Text(
                    AppString.letStart,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 35),
              height: 40,
              width: double.infinity,
              child: InkWell(
                onTap: () {
                  HapticFeedback.heavyImpact();
                  Get.to(() => const LoginScreen());
                },
                child: Center(
                  child: Text(
                    AppString.skip,
                    style: textStyleAbel(
                      fontSize: 18,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

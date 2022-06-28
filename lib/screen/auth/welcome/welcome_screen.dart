import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:turiba/screen/auth/onboarding/onboarding_screen.dart';
import 'package:turiba/utils/app_color.dart';
import 'package:turiba/utils/app_images.dart';
import 'package:turiba/utils/app_string.dart';
import 'package:turiba/utils/sizedbox.dart';
import 'package:turiba/utils/text_style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              style: textStyle(
                color: AppColors.white,
                fontSize: 42,
              ),
            ),
            Text(
              AppString.routesBaths,
              style: textStyle(
                color: AppColors.white,
                fontSize: 12,
              ),
            ),
            Image.asset(
              AppImages.appLogo,
              height: Get.height * 0.5,
            ),
            InkWell(
              onTap: () {
                HapticFeedback.heavyImpact();
                Get.to(() => OnBoardingScreen());
              },
              child: Container(
                width: Get.width * 0.84,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    AppString.letStart,
                    style: textStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                HapticFeedback.heavyImpact();
              },
              child: Text(
                AppString.skip,
                style: textStyle(
                  fontSize: 18,
                  color: AppColors.white,
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

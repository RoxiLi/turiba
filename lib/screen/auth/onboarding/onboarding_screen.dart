import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:turiba/screen/auth/onboarding/onboarding_controller.dart';
import 'package:turiba/utils/app_color.dart';
import 'package:turiba/utils/app_images.dart';
import 'package:turiba/utils/app_string.dart';
import 'package:turiba/utils/sizedbox.dart';
import 'package:turiba/utils/text_style.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final OnBoardingController con = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, // optional
    ));
    return Scaffold(
        backgroundColor: AppColors.appBlackColor,
        body: Column(
          children: [
            SizedBox(height: Get.height * 0.2),
            Flexible(
              child: PageView.builder(
                controller: con.controller,
                physics: const BouncingScrollPhysics(),
                itemCount: con.onBoardingList.length,
                onPageChanged: (index) {
                  con.currentScreen.value = index;
                },
                itemBuilder: (context, position) {
                  return Obx(() => AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        child: SizedBox(
                          width: double.infinity,
                          child: Align(
                            alignment: con.currentScreen.value == 1
                                ? Alignment.centerLeft
                                : con.currentScreen.value == 2
                                    ? Alignment.centerRight
                                    : Alignment.center,
                            child: Image.asset(
                              con.onBoardingList[con.currentScreen.value].image,
                            ),
                          ),
                        ),
                      ));
                },
              ),
            ),
            hSizedBox24,
            Obx(() => AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  child: Text(
                    con.onBoardingList[con.currentScreen.value].title,
                    style: textStyleABeeZee(
                      color: AppColors.white,
                      fontSize: 24,
                    ),
                  ),
                )),
            hSizedBox36,
            SizedBox(
              height: 40,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Obx(() => AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          height: con.currentScreen.value == index ? 10 : 8,
                          width: con.currentScreen.value == index ? 10 : 8,
                          decoration: BoxDecoration(
                            color: con.currentScreen.value == index
                                ? AppColors.white
                                : AppColors.white.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ));
                },
              ),
            ),
            hSizedBox30,
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                HapticFeedback.heavyImpact();
                con.currentScreen.value++;
              },
              child: Text(
                AppString.following,
                style: textStyleAbel(
                  color: AppColors.white,
                  fontSize: 18,
                ),
              ),
            ),
            hSizedBox36,
            hSizedBox12,
          ],
        ));
  }
}

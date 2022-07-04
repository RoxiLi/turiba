import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:turiba/screen/auth/register/register_screen.dart';
import 'package:turiba/screen/auth/selection/selection_controller.dart';
import 'package:turiba/utils/app_color.dart';
import 'package:turiba/utils/app_images.dart';
import 'package:turiba/utils/app_string.dart';
import 'package:turiba/utils/sizedbox.dart';
import 'package:turiba/utils/text_style.dart';

class SelectionScreen extends StatelessWidget {
  SelectionScreen({Key? key}) : super(key: key);

  final SelectionController con = Get.put(SelectionController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, // optional
    ));
    return Scaffold(
      backgroundColor: AppColors.appBlackColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Get.height * 0.1),
              Text(
                AppString.welcome,
                style: textStyleABeeZee(
                  color: AppColors.white,
                  fontSize: 24,
                ),
              ),
              Image.asset(
                AppImages.appLogo,
                height: Get.height * 0.3,
              ),

              /// Create Account Button

              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  HapticFeedback.heavyImpact();
                  Get.to(() => RegisterScreen());
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.white,
                  ),
                  width: Get.width,
                  height: 55,
                  child: Center(
                    child: Text(
                      AppString.createAccount,
                      style: textStyleAbel(
                        fontSize: 18,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
              ),
              hSizedBox30,

              /// Google Login Button

              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  HapticFeedback.heavyImpact();
                  con.handleSignIn();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.white,
                  ),
                  width: Get.width,
                  height: 55,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppImages.google,
                          height: 25,
                          width: 25,
                        ),
                        wSizedBox24,
                        Text(
                          AppString.googleSingIn,
                          style: textStyleAbel(
                            fontSize: 18,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              hSizedBox30,

              /// Facebook Login Button

              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  HapticFeedback.heavyImpact();
                  con.fbLogin();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: const Color(0xFF415A93),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  width: Get.width,
                  height: 55,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppImages.facebook,
                          height: 25,
                          width: 25,
                        ),
                        wSizedBox24,
                        Text(
                          AppString.facebookSingIn,
                          style: textStyleAbel(
                            fontSize: 18,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              hSizedBox30,

              /// Login Button

              Text(
                AppString.alreadyHaveAccount,
                style: textStyleAbel(
                  fontSize: 18,
                  color: AppColors.appOrangeColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

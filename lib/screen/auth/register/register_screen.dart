import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:turiba/screen/auth/login/login_screen.dart';
import 'package:turiba/screen/auth/register/register_controller.dart';
import 'package:turiba/utils/app_color.dart';
import 'package:turiba/utils/app_images.dart';
import 'package:turiba/utils/app_string.dart';
import 'package:turiba/utils/sizedbox.dart';
import 'package:turiba/utils/text_style.dart';
import 'package:turiba/utils/widget/textfield.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final RegisterController con = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, // optional
    ));
    return Scaffold(
        backgroundColor: AppColors.appBlackColor,
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: Get.height * 0.08),
                      Text(
                        AppString.createAccount,
                        style: textStyleABeeZee(
                          color: AppColors.white,
                          fontSize: 24,
                        ),
                      ),
                      Image.asset(
                        AppImages.appLogo,
                        height: Get.height * 0.24,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Name TextField

                            Text(
                              AppString.name,
                              style: textStyleAbel(
                                fontSize: 18,
                                color: AppColors.white,
                              ),
                            ),
                            hSizedBox4,
                            CommonTextField(
                              controller: con.nameController.value,
                              hintText: AppString.name,
                            ),
                            con.nameValidation.value &&
                                    con.allValidation.isFalse
                                ? hSizedBox6
                                : hSizedBox0,
                            con.nameValidation.value &&
                                    con.allValidation.isFalse
                                ? Text(
                                    AppString.fieldRequired,
                                    style: textStyleAbel(
                                      fontSize: 18,
                                      color: AppColors.red,
                                    ),
                                  )
                                : const SizedBox(),

                            /// Email TextField

                            hSizedBox14,
                            Text(
                              AppString.email,
                              style: textStyleAbel(
                                fontSize: 18,
                                color: AppColors.white,
                              ),
                            ),
                            hSizedBox4,
                            CommonTextField(
                              controller: con.emailController.value,
                              hintText: AppString.email,
                            ),
                            (con.emailValidation.value ||
                                        con.emailValidation1.value) &&
                                    con.allValidation.isFalse
                                ? hSizedBox6
                                : hSizedBox0,
                            con.emailValidation.value &&
                                    con.allValidation.isFalse
                                ? Text(
                                    AppString.fieldRequired,
                                    style: textStyleAbel(
                                      fontSize: 18,
                                      color: AppColors.red,
                                    ),
                                  )
                                : con.emailValidation1.value &&
                                        con.allValidation.isFalse
                                    ? Text(
                                        AppString.validEmail,
                                        style: textStyleAbel(
                                          fontSize: 18,
                                          color: AppColors.red,
                                        ),
                                      )
                                    : const SizedBox(),

                            /// Password TextField

                            hSizedBox14,
                            Text(
                              AppString.password,
                              style: textStyleAbel(
                                fontSize: 18,
                                color: AppColors.white,
                              ),
                            ),
                            hSizedBox4,
                            CommonTextField(
                              controller: con.passwordController.value,
                              hintText: AppString.password,
                            ),
                            (con.passwordValidation.value ||
                                        con.passwordValidation1.value) &&
                                    con.allValidation.isFalse
                                ? hSizedBox6
                                : hSizedBox0,
                            con.passwordValidation.value &&
                                    con.allValidation.isFalse
                                ? Text(
                                    AppString.fieldRequired,
                                    style: textStyleAbel(
                                      fontSize: 18,
                                      color: AppColors.red,
                                    ),
                                  )
                                : con.passwordValidation1.value &&
                                        con.allValidation.isFalse
                                    ? Text(
                                        AppString.passwordValidation,
                                        style: textStyleAbel(
                                          fontSize: 18,
                                          color: AppColors.red,
                                        ),
                                      )
                                    : const SizedBox(),
                          ],
                        ),
                      ),

                      /// Create Account Button
                      hSizedBox36,
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          HapticFeedback.heavyImpact();

                          /// Name Validation

                          if (con.nameController.value.text.isEmpty) {
                            con.nameValidation.value = true;
                          } else {
                            con.nameValidation.value = false;
                          }

                          /// Email Validation

                          if (con.emailController.value.text.trim().isEmpty) {
                            con.emailValidation.value = true;
                            con.emailValidation1.value = false;
                          } else if (!GetUtils.isEmail(
                              con.emailController.value.text.trim())) {
                            con.emailValidation.value = false;
                            con.emailValidation1.value = true;
                          } else {
                            con.emailValidation.value = false;
                            con.emailValidation1.value = false;
                          }

                          /// Password Validation

                          if (con.passwordController.value.text
                              .trim()
                              .isEmpty) {
                            con.passwordValidation.value = true;
                            con.passwordValidation1.value = false;
                          } else if (con.passwordController.value.text.length <
                              6) {
                            con.passwordValidation.value = false;
                            con.passwordValidation1.value = true;
                          } else {
                            con.passwordValidation.value = false;
                            con.passwordValidation1.value = false;
                          }

                          if (con.nameValidation.value &&
                              con.emailValidation.value &&
                              con.emailValidation.value) {
                            con.allValidation.value = true;
                          } else {
                            con.allValidation.value = false;
                          }
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
                              AppString.sigIn,
                              style: textStyleAbel(
                                fontSize: 18,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      hSizedBox12,
                      con.allValidation.value
                          ? Text(
                              AppString.fieldRequired,
                              style: textStyleAbel(
                                fontSize: 18,
                                color: AppColors.red,
                              ),
                            )
                          : const SizedBox(),
                      hSizedBox24,

                      /// Login Button

                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          HapticFeedback.heavyImpact();
                          Get.to(() => const LoginScreen());
                        },
                        child: Text(
                          AppString.alreadyHaveAccount,
                          style: textStyleAbel(
                            fontSize: 18,
                            color: AppColors.appOrangeColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Obx(() => con.isLoading.value
                ? Center(child: Lottie.asset('assets/lottie/loading.json'))
                : const SizedBox()),
          ],
        ));
  }
}

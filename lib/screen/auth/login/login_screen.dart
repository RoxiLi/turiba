import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:turiba/injection.dart';
import 'package:turiba/screen/auth/login/login_bloc/login_bloc.dart';
import 'package:turiba/utils/app_color.dart';
import 'package:turiba/utils/app_images.dart';
import 'package:turiba/utils/app_string.dart';
import 'package:turiba/utils/sizedbox.dart';
import 'package:turiba/utils/text_style.dart';
import 'package:turiba/utils/widget/app_snackbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, // optional
    ));
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: Scaffold(
          backgroundColor: AppColors.appBlackColor,
          body: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: Get.height * 0.2),
                  Text(
                    AppString.logIn,
                    style: textStyleABeeZee(
                      color: AppColors.white,
                      fontSize: 24,
                    ),
                  ),
                  Image.asset(
                    AppImages.appLogo,
                    height: Get.height * 0.24,
                  ),

                  /// Create Account Button
                  hSizedBox36,
                  BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) {
                      state.loginOrFailureOption.fold(
                        () => null,
                        (either) => either.fold(
                          (failure) => toast(
                            failure.maybeWhen(
                              orElse: () => "Ocurrio un error inesperado",
                              canceledByUser: () =>
                                  "Inicio de sesion cancelado",
                            ),
                            false,
                          ),
                          (user) => toast(
                            "Bienvenido ${user.name}",
                            true,
                          ),
                        ),
                      );
                    },
                    builder: (context, state) {
                      final loginBloc = context.read<LoginBloc>();
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                HapticFeedback.heavyImpact();
                                loginBloc.add(const LoginEvent.login());
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: AppColors.white,
                                ),
                                width: Get.width,
                                height: 55,
                                child: !state.loading
                                    ? Center(
                                        child: Text(
                                          AppString.sigIn,
                                          style: textStyleAbel(
                                            fontSize: 18,
                                            color: AppColors.black,
                                          ),
                                        ),
                                      )
                                    : const CircularProgressIndicator
                                        .adaptive(),
                              ),
                            ),
                          ),
                          hSizedBox24,
                          InkWell(
                            onTap: () {
                              HapticFeedback.heavyImpact();
                              loginBloc.add(const LoginEvent.login());
                            },
                            child: Text(
                              AppString.doNotHaveAccount,
                              style: textStyleAbel(
                                fontSize: 18,
                                color: AppColors.appOrangeColor,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),

                  /// Login Button
                ],
              ),
            ),
          )),
    );
  }
}

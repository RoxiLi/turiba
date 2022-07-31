import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboarding/onboarding.dart';
import 'package:turiba/utils/app_string.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_images.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late Material materialButton;
  late int index;

  List<PageModel> getList(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return [
      PageModel(
        widget: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.0,
              color: background,
            ),
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: SizedBox(
              height: height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 90.0,
                    ),
                    child: Image.asset(
                      AppImages.onBoard1,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'SECURED BACKUP',
                        style: pageTitleStyle,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Keep your files in closed safe so you can\'t lose them. Consider TrueNAS.',
                        style: pageInfoStyle,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      PageModel(
        widget: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 90.0,
                ),
                child: Image.asset(
                  AppImages.onBoard2,
                  fit: BoxFit.fitHeight,
                  height: 450,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: const [
                      Text(
                        'CHANGE AND RISE',
                        style: pageTitleStyle,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Give others access to any file or folders you choose',
                        style: pageInfoStyle,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    materialButton = _skipButton();
    index = 0;
  }

  Material _skipButton({void Function(int)? setIndex}) {
    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: defaultSkipButtonColor,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if (setIndex != null) {
            index = 1;
            setIndex(1);
          }
        },
        child: const Padding(
          padding: defaultSkipButtonPadding,
          child: Text(
            AppString.skip,
            style: defaultSkipButtonTextStyle,
          ),
        ),
      ),
    );
  }

  Material get _signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {
          HapticFeedback.heavyImpact();
          Navigator.pushNamed(context, "/login");
        },
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            AppString.sigIn,
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBlackColor,
      body: Onboarding(
        pages: getList(context),
        onPageChange: (int pageIndex) {
          index = pageIndex;
        },
        startPageIndex: 0,
        footerBuilder: (context, dragDistance, pagesLength, setIndex) {
          return DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(45.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIndicator(
                    netDragPercent: dragDistance,
                    pagesLength: pagesLength,
                    indicator: Indicator(
                      indicatorDesign: IndicatorDesign.line(
                        lineDesign: LineDesign(
                          lineType: DesignType.line_uniform,
                        ),
                      ),
                    ),
                  ),
                  index == pagesLength - 1
                      ? _signupButton
                      : _skipButton(setIndex: setIndex)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

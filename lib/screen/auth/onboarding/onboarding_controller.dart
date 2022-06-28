import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turiba/utils/app_images.dart';

class OnBoardingController extends GetxController {
  RxInt currentScreen = 0.obs;
  PageController controller = PageController(initialPage: 0, keepPage: false);
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: AppImages.onBoard1,title: ""),
    OnBoardingModel(image: AppImages.onBoard2,title: "Geolocalización"),
    OnBoardingModel(image: AppImages.onBoard3,title: "Realidad Aumentada"),
  ];
}

class OnBoardingModel {
  String image;
  String title;

  OnBoardingModel({
    required this.title,
    required this.image,
  });
}

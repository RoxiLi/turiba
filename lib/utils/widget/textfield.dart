import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turiba/utils/app_color.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? enabled;

  const CommonTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: AppColors.white),
        ),
        child: TextFormField(
          enabled: enabled,
          controller: controller,
          style: const TextStyle(color: AppColors.white, fontSize: 16),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 12),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(color: AppColors.white, fontSize: 16),
          ),
        ));
  }
}

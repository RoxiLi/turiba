import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:turiba/injection.dart';
import 'package:turiba/screen/dashboard/profile/profile_bloc/profile_bloc.dart';
import 'package:turiba/screen/dashboard/profile/profile_controller.dart';
import 'package:turiba/utils/app_color.dart';
import 'package:turiba/utils/app_string.dart';
import 'package:turiba/utils/sizedbox.dart';
import 'package:turiba/utils/text_style.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final ProfileController con = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>()
        ..add(
          const ProfileEvent.getProfile(),
        ),
      child: Scaffold(
        backgroundColor: AppColors.appBlackColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        color: const Color(0xFFD5853B),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chevron_left,
                          size: 40,
                          color: Color(0xFFD5853B),
                        ),
                      ),
                      SvgPicture.asset("assets/svg/edit.svg")
                    ],
                  ),
                ),
                hSizedBox14,
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColors.greyColor,
                ),
                hSizedBox16,
                Text(
                  "DANILIA",
                  style: textStyleLato(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                hSizedBox12,
                Text(
                  "daniela@gmail.com",
                  style: textStyleLato(
                    fontSize: 20,
                    textDecoration: TextDecoration.underline,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                hSizedBox36,
                hSizedBox20,
                Container(
                  height: 2,
                  width: Get.width * 0.94,
                  color: const Color(0xE0E0E01A).withOpacity(0.1),
                ),
                hSizedBox20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.favoriteCircuits,
                        style: textStyleLato(fontSize: 20),
                      ),
                      hSizedBox14,
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/dummy/1.jpeg",
                                      height: Get.height * 0.15,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        hSizedBox10,
                                        Text(
                                          "La casa del árbol",
                                          maxLines: 3,
                                          style: textStyleLato(fontSize: 15),
                                        ),
                                        hSizedBox16,
                                        RatingBar.builder(
                                          initialRating: 5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: false,
                                          itemSize: 15,
                                          itemCount: 5,
                                          itemPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 0),
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Color(0xFFD5853B),
                                          ),
                                          onRatingUpdate: (rating) {},
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

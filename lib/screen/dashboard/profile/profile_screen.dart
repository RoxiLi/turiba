import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:turiba/injection.dart';
import 'package:turiba/screen/auth/auth_bloc/auth_bloc.dart';
import 'package:turiba/screen/dashboard/profile/profile_bloc/profile_bloc.dart';
import 'package:turiba/utils/app_color.dart';
import 'package:turiba/utils/app_string.dart';
import 'package:turiba/utils/sizedbox.dart';
import 'package:turiba/utils/text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home/place_detail.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>()
        ..add(
          const ProfileEvent.getProfile(),
        ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(
                      const AuthEvent.logOut(),
                    );
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/welcome",
                  (_) => false,
                );
              },
              icon: const Icon(
                Icons.logout,
              ),
            )
          ],
        ),
        backgroundColor: AppColors.appBlackColor,
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.map(
              loading: (_) => Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Lottie.asset(
                    "assets/lottie/loading.json",
                  ),
                ),
              ),
              loaded: (loaded) => SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      hSizedBox14,
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: AppColors.greyColor,
                        backgroundImage: NetworkImage(loaded.user!.photo),
                      ),
                      hSizedBox16,
                      Text(
                        loaded.user?.name ?? "",
                        style: textStyleLato(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      hSizedBox12,
                      Text(
                        loaded.user?.email ?? "",
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
                              itemCount: loaded.places!.length,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (
                                BuildContext context,
                                int index,
                              ) {
                                return InkWell(
                                  onTap: () {
                                    Get.to(
                                      () => PlaceDetail(
                                        place: loaded.places![index],
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 16),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.network(
                                              loaded.places![index].image,
                                              height: Get.height * 0.15,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 12,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                hSizedBox10,
                                                Text(
                                                  loaded.places![index].name,
                                                  maxLines: 3,
                                                  style: textStyleLato(
                                                      fontSize: 15),
                                                ),
                                                hSizedBox16,
                                                RatingBar.builder(
                                                  initialRating: loaded
                                                      .places![index].stars
                                                      .toDouble(),
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: false,
                                                  itemSize: 15,
                                                  itemCount: 5,
                                                  itemPadding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 0,
                                                  ),
                                                  itemBuilder: (context, _) =>
                                                      const Icon(
                                                    Icons.star,
                                                    color: Color(0xFFD5853B),
                                                  ),
                                                  onRatingUpdate: (rating) {},
                                                ),
                                                hSizedBox10,
                                                Text(
                                                  loaded.places![index]
                                                      .description,
                                                  maxLines: 3,
                                                  style: textStyleLato(
                                                    fontSize: 12,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
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
            );
          },
        ),
      ),
    );
  }
}

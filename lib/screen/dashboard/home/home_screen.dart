import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:turiba/injection.dart';
import 'package:turiba/screen/auth/models/user.dart';
import 'package:turiba/screen/dashboard/home/model/place.dart';
import 'package:turiba/screen/dashboard/home/place_detail.dart';
import 'package:turiba/screen/dashboard/home/places_bloc/places_bloc.dart';
import 'package:turiba/screen/dashboard/profile/profile_bloc/profile_bloc.dart';
import 'package:turiba/screen/dashboard/profile/profile_screen.dart';
import 'package:turiba/utils/app_color.dart';
import 'package:turiba/utils/app_images.dart';
import 'package:turiba/utils/app_string.dart';
import 'package:turiba/utils/sizedbox.dart';
import 'package:turiba/utils/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: AppColors.appBlackColor,
      body: SafeArea(
        child: Column(
          children: [
            hSizedBox16,
            BlocProvider(
              create: (context) => getIt<ProfileBloc>()
                ..add(
                  const ProfileEvent.getProfile(),
                ),
              child: BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                return state.map(
                  loading: (_) => const SizedBox(),
                  loaded: (loaded) => Profile(
                    user: loaded.user,
                    places: loaded.places,
                  ),
                );
              }),
            ),
            hSizedBox30,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Slider(),
                    hSizedBox16,
                    Center(
                      child: Image.asset(
                        "assets/images/camera.png",
                        height: Get.height * 0.075,
                      ),
                    ),
                    hSizedBox12,
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
                          const ListPlaces()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  final UserModel? user;
  final List<Place>? places;

  const Profile({
    Key? key,
    this.user,
    required this.places,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Get.to(
                () => const ProfileScreen(),
              );
            },
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: AppColors.greyColor,
                  backgroundImage: NetworkImage(user!.photo),
                ),
                wSizedBox10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user?.name ?? "",
                      style: textStyleLato(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                "/search",
              );
            },
            child: SvgPicture.asset(
              AppImages.search,
              height: 20,
            ),
          )
        ],
      ),
    );
  }
}

class ListPlaces extends StatelessWidget {
  const ListPlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PlacesBloc>()
        ..add(
          const PlacesEvent.getFavoritesPlaces(),
        ),
      child: BlocBuilder<PlacesBloc, PlacesState>(
        builder: (context, state) {
          return state.map(
            failure: (_) => Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            loading: (_) => Center(
              child: SizedBox(
                height: Get.height * 0.35,
                width: 100,
                child: Lottie.asset(
                  "assets/lottie/loading.json",
                ),
              ),
            ),
            loaded: (loaded) => ListView.builder(
              shrinkWrap: true,
              itemCount: loaded.places.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(
                      () => PlaceDetail(
                        place: loaded.places[index],
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              loaded.places[index].image,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                hSizedBox10,
                                Text(
                                  loaded.places[index].name,
                                  maxLines: 3,
                                  style: textStyleLato(fontSize: 15),
                                ),
                                hSizedBox16,
                                RatingBar.builder(
                                  initialRating:
                                      loaded.places[index].stars.toDouble(),
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemSize: 15,
                                  itemCount: 5,
                                  itemPadding:
                                      const EdgeInsets.symmetric(horizontal: 0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Color(0xFFD5853B),
                                  ),
                                  onRatingUpdate: (rating) {},
                                ),
                                hSizedBox10,
                                Text(
                                  loaded.places[index].description,
                                  maxLines: 3,
                                  style: textStyleLato(
                                    fontSize: 12,
                                  ),
                                  overflow: TextOverflow.ellipsis,
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
            ),
          );
        },
      ),
    );
  }
}

class Slider extends StatelessWidget {
  const Slider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PlacesBloc>()
        ..add(
          const PlacesEvent.getPlaces(),
        ),
      child: BlocBuilder<PlacesBloc, PlacesState>(
        builder: (context, state) {
          return state.map(
            failure: (_) => Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            loading: (_) => Center(
                child: SizedBox(
              height: Get.height * 0.35,
              width: 100,
              child: Lottie.asset(
                "assets/lottie/loading.json",
              ),
            )),
            loaded: (loaded) => CarouselSlider(
              items: List.generate(
                loaded.places.length,
                (index) => InkWell(
                  onTap: () {
                    Get.to(
                      () => PlaceDetail(
                        place: loaded.places[index],
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      loaded.places[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              options: CarouselOptions(
                height: Get.height * 0.35,
                viewportFraction: 0.75,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          );
        },
      ),
    );
  }
}

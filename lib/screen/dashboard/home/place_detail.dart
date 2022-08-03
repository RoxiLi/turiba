import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:turiba/injection.dart';
import 'package:turiba/screen/dashboard/home/places_bloc/places_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/app_color.dart';
import '../../../utils/sizedbox.dart';
import 'model/place.dart';

class PlaceDetail extends StatelessWidget {
  final Place place;
  const PlaceDetail({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBlackColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              Container(
                height: Get.height * 0.35,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      place.image,
                    ),
                  ),
                ),
              ),
              hSizedBox16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      hSizedBox8,
                      RatingBar.builder(
                        initialRating: place.stars.toDouble(),
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemSize: 15,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color(0xFFD5853B),
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ],
                  ),
                  BlocProvider(
                    create: (context) => getIt<PlacesBloc>()
                      ..add(
                        const PlacesEvent.getLikedPlaces(),
                      ),
                    child: BlocBuilder<PlacesBloc, PlacesState>(
                        builder: (context, state) {
                      final bloc = context.read<PlacesBloc>();
                      return state.map(
                        loading: (_) => const SizedBox(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: CircularProgressIndicator.adaptive(
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        failure: (_) => const SizedBox(),
                        loaded: (loaded) {
                          final ids = loaded.places.map((place) => place.id);
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButtonCustom(
                              icon: ids.contains(place.id)
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              text: "Me gusta",
                              onTap: () {
                                if (ids.contains(place.id)) {
                                  bloc.add(
                                    PlacesEvent.unLikePlace(place: place),
                                  );
                                } else {
                                  bloc.add(
                                    PlacesEvent.likePlace(place: place),
                                  );
                                }
                              },
                            ),
                          );
                        },
                      );
                    }),
                  )
                ],
              ),
              hSizedBox16,
              const Divider(
                color: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButtonCustom(
                    icon: Icons.map,
                    text: "Como llegar",
                    onTap: () async {
                      Uri googleUrl = Uri.parse(
                        'https://www.google.com/maps/search/?api=1&query=${place.geoPoint.latitude},${place.geoPoint.longitude}',
                      );
                      await launchUrl(googleUrl);
                    },
                  ),
                  IconButtonCustom(
                    icon: Icons.follow_the_signs,
                    text: "Caminata",
                    onTap: () {},
                  ),
                  IconButtonCustom(
                    icon: Icons.run_circle_outlined,
                    text: "Caminata",
                    onTap: () {},
                  )
                ],
              ),
              const Divider(
                color: Colors.white,
              ),
              hSizedBox16,
              Text(
                place.description,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconButtonCustom extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  const IconButtonCustom({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
            hSizedBox4,
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

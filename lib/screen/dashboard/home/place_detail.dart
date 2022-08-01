import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

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
      body: Padding(
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Icons.favorite,
                    text: "Me gusta",
                  ),
                )
              ],
            ),
            hSizedBox16,
            const Divider(
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                IconButton(
                  icon: Icons.map,
                  text: "Como llegar",
                ),
                IconButton(
                  icon: Icons.running_with_errors_sharp,
                  text: "Caminata",
                ),
                IconButton(
                  icon: Icons.running_with_errors_sharp,
                  text: "Caminata",
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
    );
  }
}

class IconButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

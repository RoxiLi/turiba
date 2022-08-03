import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:turiba/injection.dart';
import 'package:turiba/screen/dashboard/search/search_bloc/search_bloc.dart';

import '../../../utils/app_color.dart';
import '../../../utils/sizedbox.dart';
import '../../../utils/text_style.dart';
import '../home/model/place.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> filterSelected = [];
  String filterName = "";
  @override
  Widget build(BuildContext context) {
    final list = ["Casadas", "Rios", "Puentes"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buscar"),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      backgroundColor: AppColors.appBlackColor,
      body: BlocProvider(
        create: (context) => getIt<SearchBloc>(),
        child: SingleChildScrollView(
            child: Column(
          children: [
            BlocBuilder<SearchBloc, SearchState>(
              builder: (
                context,
                state,
              ) {
                final bloc = context.read<SearchBloc>();
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Theme(
                        data: Theme.of(context).copyWith(
                          hintColor: Colors.white,
                          colorScheme: ColorScheme.fromSwatch().copyWith(
                            secondary: Colors.white,
                            primary: AppColors.appOrangeColor,
                          ),
                        ), // set color her
                        child: TextField(
                          autofocus: true,
                          style: const TextStyle(color: Colors.white),
                          onSubmitted: (name) {
                            bloc.add(
                              SearchEvent.search(
                                name: name,
                                topics: filterSelected,
                              ),
                            );
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search_sharp,
                              size: 25,
                              color: AppColors.appOrangeColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 0.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            labelStyle: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Filtos",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: list.sublist(1).map((item) {
                          return SizedBox(
                            height: 32,
                            child: FilterChip(
                              backgroundColor: AppColors.greyColor,
                              selected: filterSelected.contains(item),
                              label: Text(item),
                              onSelected: (check) {
                                setState(() {
                                  if (filterSelected.contains(item)) {
                                    filterSelected.remove(item);
                                  } else {
                                    filterSelected.add(item);
                                  }
                                  bloc.add(
                                    SearchEvent.search(
                                      name: filterName,
                                      topics: filterSelected,
                                    ),
                                  );
                                });
                              },
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 20),
                      const Divider(color: Colors.white),
                      const SizedBox(height: 20),
                      const Text(
                        "Resultados",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      state.map(
                        initial: (_) => const SizedBox(
                          height: 400,
                          child: Center(
                            child: Text(
                              "Sin resultados",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        failure: (_) =>
                            const Text("Ocurrio un error inesperado"),
                        loading: (_) => Center(
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Lottie.asset(
                              "assets/lottie/loading.json",
                            ),
                          ),
                        ),
                        loaded: (loaded) => Wrap(
                          spacing: 2,
                          runSpacing: 2,
                          children: loaded.places.isNotEmpty
                              ? loaded.places
                                  .map((place) => PlaceWidget(
                                        place: place,
                                      ))
                                  .toList()
                              : [
                                  const SizedBox(
                                    height: 400,
                                    child: Center(
                                      child: Text(
                                        "Sin resultados",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  )
                                ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        )),
      ),
    );
  }
}

class PlaceWidget extends StatelessWidget {
  final Place place;
  const PlaceWidget({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                  place.image,
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
                      place.name,
                      maxLines: 3,
                      style: textStyleLato(fontSize: 15),
                    ),
                    hSizedBox16,
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
                    hSizedBox10,
                    Text(
                      place.description,
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
  }
}

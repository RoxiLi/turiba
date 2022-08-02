import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turiba/injection.dart';
import 'package:turiba/screen/dashboard/search/search_bloc/search_bloc.dart';

import '../../../utils/app_color.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: AppColors.appBlackColor,
      body: BlocProvider(
        create: (context) => getIt<SearchBloc>()
          ..add(
            const SearchEvent.search(
              name: "pep",
              topics: [],
            ),
          ),
        child: SingleChildScrollView(
            child: Column(
          children: [
            BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
              return Container();
            })
          ],
        )),
      ),
    );
  }
}

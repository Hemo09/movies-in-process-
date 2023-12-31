import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/utils/app_router.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_view.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_view_super.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_view_up_coming.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_row_header.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            CustomRowHeader(
              text: "Now Playing",
              press: () {
                GoRouter.of(context)
                    .push(NamedScreen.kFullListScreen, extra: "Now Playing");
              },
            ),
            const CustomListView(),
            CustomRowHeader(
              text: "popular",
              press: () {
                GoRouter.of(context)
                    .push(NamedScreen.kFullListScreen, extra: "popular");
              },
            ),
            const CustomListViewSuper(),
            CustomRowHeader(
              text: "Top Rated",
              press: () {
                GoRouter.of(context)
                    .push(NamedScreen.kFullListScreen, extra: "Top Rated");
              },
            ),
            const CustomListViewSuper(),
            const SizedBox(
              height: 10,
            ),
            CustomRowHeader(
              text: "Up Coming",
              press: () {
                GoRouter.of(context)
                    .push(NamedScreen.kFullListScreen, extra: "Up Coming");
              },
            ),
          ],
        ),
      )),
      const SliverToBoxAdapter(
        child: CustomListViewUpComing(),
      ),
    ]);
  }
}

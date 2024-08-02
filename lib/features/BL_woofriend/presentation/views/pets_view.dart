import 'package:flutter/material.dart';
import 'package:woofriend/config/theme/app_theme.dart';
import 'package:woofriend/features/widgets/widget.dart';

class PetsView extends StatelessWidget {
  const PetsView({super.key});

  @override
  Widget build(BuildContext context) {
    const backGroundColor = colorSecondaryTheme;
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          expandedHeight: 20,
          backgroundColor: backGroundColor,
          titleSpacing: 0.0,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.symmetric(vertical: 5),
            centerTitle: true,
            title: CustomAppbar(),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return const Column(
            children: [
              PetsScreen(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Divider()),
              PetsScreen(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Divider()),
              PetsScreen(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Divider()),
              PetsScreen(),
            ],
          );
        }, childCount: 1))
      ],
    );
  }
}

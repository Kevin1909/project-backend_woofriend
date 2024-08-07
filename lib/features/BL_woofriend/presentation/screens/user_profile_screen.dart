import 'package:flutter/material.dart';

import 'package:woofriend/config/theme/app_theme.dart';
import 'package:woofriend/features/shared/shared.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _CustomSliverAppBar(),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => _ProfileDetails(),
                childCount: 1))
      ],
    ));
  }
}

class _ProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    //final textStyles = Theme.of(context).textTheme;
    const Color colorTertiary = colorTertiaryTheme;
    const Color colorSecondary = colorSecondaryTheme;

    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ButtonsProfile(
          colorTheme: colorTertiary,
          colorTheme2: colorSecondary,
        )
      ],
    );
  }
}

class _ButtonsProfile extends StatelessWidget {
  final Color colorTheme;
  final Color colorTheme2;
  const _ButtonsProfile({required this.colorTheme, required this.colorTheme2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 45,
            width: 130,
            child: CustomFilledButton(
              text: "Editar",
              buttonColor: colorTheme,
              colorText: colorTheme2,
            ),
          ),
          SizedBox(
              height: 45,
              width: 130,
              child: CustomFilledButton(
                text: "Eliminar",
                buttonColor: colorTheme,
                colorText: colorTheme2,
              )),
        ],
      ),
    );
  }
}

class _CustomSliverAppBar extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    //const iconCamera = "icons/camara.svg";
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return SliverAppBar(
      backgroundColor: colorSecondaryTheme,
      expandedHeight: size.height * 0.5,
      foregroundColor: Colors.white,
      actions: [
        IconButton(
            onPressed: () async {},
            icon: const Icon(color: Colors.black, Icons.arrow_back)

            // const Icon( Icons.favorite_border )
            // icon: const Icon( Icons.favorite_rounded, color: Colors.red )
            ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(children: [
          const _CustomGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.2, 1.0],
              colors: [Colors.black54, Colors.transparent]),
          const Align(
            child: SizedBox(
              height: 250,
              width: 250,
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage(
                    "https://i.blogs.es/4a9892/1366_2000-6-/840_560.png"),
              ),
            ),
          ),
          Positioned(
              bottom: 120,
              right: 95,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: colorTertiaryTheme,
                      child: const Icon(
                          color: Colors.white, Icons.camera_alt_sharp)))),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Kevin Lievano",
              style: textStyle.titleLarge,
            ),
          ),
          SizedBox.shrink()
        ]),
      ),
    );
  }
}

class _CustomGradient extends StatelessWidget {
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final List<double> stops;
  final List<Color> colors;

  const _CustomGradient(
      {this.begin = Alignment.centerLeft,
      this.end = Alignment.centerRight,
      required this.stops,
      required this.colors});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: begin, end: end, stops: stops, colors: colors))),
    );
  }
}

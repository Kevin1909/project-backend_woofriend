import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBackground extends StatelessWidget {
  final Widget child;
  const IconBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const iconPaw = "icons/paw-filled.svg";
    final sizeIcon = size * 0.23;

    final iconList = [
      SvgIcon(
        spins: 0.9,
        assetIcon: iconPaw,
        size: sizeIcon,
      ),
      SvgIcon(
        spins: 0.6,
        assetIcon: iconPaw,
        size: sizeIcon,
      ),
      SvgIcon(
        spins: 0.2,
        assetIcon: iconPaw,
        size: sizeIcon,
      ),
      SvgIcon(
        spins: 0.4,
        assetIcon: iconPaw,
        size: sizeIcon,
      ),
    ];

    return SizedBox.expand(
      child: Stack(children: [
        SingleChildScrollView(
          controller: ScrollController(initialScrollOffset: 78.0),
          physics: const NeverScrollableScrollPhysics(),
          child: SingleChildScrollView(
            controller: ScrollController(initialScrollOffset: 200.0),
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomIconBackground(
                      icons: iconList,
                      sizedBox: SizedBox(
                        width: size.width * 0.6,
                      )),
                  CustomIconBackground(
                      icons: iconList,
                      sizedBox: SizedBox(
                        width: size.width * 0.9,
                      )),
                  CustomIconBackground(
                      icons: iconList,
                      sizedBox: SizedBox(
                        width: size.width * 0.7,
                      )),
                  CustomIconBackground(
                      icons: iconList,
                      sizedBox: SizedBox(
                        width: size.width * 0.5,
                      )),
                  CustomIconBackground(
                      icons: iconList,
                      sizedBox: SizedBox(
                        width: size.width * 0.6,
                      )),
                ]),
          ),
        ),
        child
      ]),
    );
  }
}

class CustomIconBackground extends StatefulWidget {
  final List<SvgIcon> icons;
  final SizedBox sizedBox;

  const CustomIconBackground({
    super.key,
    required this.icons,
    this.sizedBox = const SizedBox(
      width: 0,
    ),
  });

  @override
  State<CustomIconBackground> createState() => _CustomIconBackgroundState();
}

class _CustomIconBackgroundState extends State<CustomIconBackground> {
  late List<SvgIcon> iconsMixed;

  @override
  void initState() {
    super.initState();
    iconsMixed = [...widget.icons];
    iconsMixed.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [Row(children: iconsMixed), widget.sizedBox]);
  }
}

class  SvgIcon extends StatelessWidget{
  final Size size;
  final String assetIcon;
  final double spins;
  final Color color;

  const SvgIcon({
    super.key,
    required this.assetIcon,
    required this.size,
    this.spins = 0.0, 
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Spin(
      spins: spins,
      child: SvgPicture.asset(
        assetIcon,
        width: size.width,
        height: size.height,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }
}

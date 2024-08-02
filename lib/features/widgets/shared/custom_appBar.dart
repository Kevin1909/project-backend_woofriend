import 'package:flutter/material.dart';
import 'package:woofriend/features/widgets/widget.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    const adoptionIcon = "icons/cat_dog.svg";
    const iconSize = Size.square(30);
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: SvgIcon(assetIcon: adoptionIcon, size: iconSize)),
              const SizedBox(width: 5),
              Text('En adopción', style: titleStyle),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
          ),
        ),
      ),
    );
  }
}

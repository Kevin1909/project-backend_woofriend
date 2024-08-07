// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:woofriend/config/theme/app_theme.dart';
import 'package:woofriend/features/BL_woofriend/presentation/views/pets_view.dart';
import 'package:woofriend/features/shared/shared.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);

    const backgroundColorAppBar = colorPrimaryTheme;
    const colorButtonBar = Color.fromARGB(255, 51, 53, 55);
    const sizeIcon = 28.0;
    const sizeIconBar = Size.square(24);

    const searchIcon = "icons/magnify_search_zoom_icon.svg";
    const circleUser = "icons/circle_user_icon.svg";
    const chatIcon = "icons/chat_dialog_forum_speaking_icon.svg";

    @override
    void initState() {
      super.initState();
      tabController;
    }

    @override
    void dispose() {
      super.dispose();
      tabController.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        toolbarOpacity: 1.0,
        bottomOpacity: 1.0,
        backgroundColor: backgroundColorAppBar,
        title: const Text('Woofriend'),
        actions: const [
          CustomButton(
            assetIcon: chatIcon,
            sizeIcon: sizeIconBar,
            color: colorButtonBar,
          ),
          CustomButton(
            assetIcon: circleUser,
            sizeIcon: sizeIconBar,
            color: colorButtonBar,
          ),
          CustomButton(
              assetIcon: searchIcon,
              sizeIcon: sizeIconBar,
              color: colorButtonBar)
        ],
        bottom: TabBar(
          controller: tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorColor: const Color.fromRGBO(26, 59, 90, 1),
          tabs: const <Widget>[
            Tab(
                icon: Icon(
              Icons.home_filled,
              size: sizeIcon,
            )),
            Tab(
                icon: Icon(
              Icons.pets_sharp,
              size: sizeIcon,
            )),
            Tab(
                icon: Icon(
              Icons.favorite_sharp,
              size: sizeIcon,
            )),
            Tab(
                icon: Icon(
              Icons.campaign_sharp,
              size: sizeIcon,
            )),
            Tab(
                icon: Icon(
              Icons.notification_add_rounded,
              size: sizeIcon,
            )),
          ],
        ),
      ),
      body: TabBarView(controller: tabController, children: const [
        Text("Hola"),
        PetsView(),
        Text("Hola"),
        Text("Hola"),
        Text("Hola"),
      ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String assetIcon;
  final Size sizeIcon;
  final Color color;
  final void Function()? ontap;

  const CustomButton({
    super.key,
    required this.assetIcon,
    required this.sizeIcon,
    this.color = Colors.black, 
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    const backgroundColorAppBar = colorPrimaryTheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Material(
        color: backgroundColorAppBar,
        child: InkWell(
          onTap: ontap,
          splashColor: const Color.fromARGB(255, 150, 14, 14),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: SvgIcon(
                assetIcon: assetIcon,
                size: sizeIcon,
                color: color,
              )),
        ),
      ),
    );
  }
}

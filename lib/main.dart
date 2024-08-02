import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:woofriend/config/theme/app_theme.dart';
import 'package:woofriend/features/BL_woofriend/presentation/screens/home_screen.dart';


void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme().getTheme(),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen());
  }
}

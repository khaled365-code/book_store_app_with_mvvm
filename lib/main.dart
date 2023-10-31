import 'package:books_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/views/splash_screen.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}


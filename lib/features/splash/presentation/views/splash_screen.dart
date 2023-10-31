import 'package:books_app/constants.dart';
import 'package:books_app/core/utilis/asset_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {

  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'K o t o b i',
          style: TextStyle(fontSize: 60, fontFamily: 'Gara'),
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class SplashViewBody extends StatelessWidget {

 const SplashViewBody({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DefaultTextStyle(
          style: TextStyle(fontSize: 60, fontFamily: 'Gara'),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('K o t o b i', textAlign: TextAlign.center),
            ],
            repeatForever: true,
          ),
        ),
      ],
    );
  }
}

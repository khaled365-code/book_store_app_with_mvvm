import 'package:books_app/constants.dart';
import 'package:books_app/core/utilis/app_routing.dart';
import 'package:books_app/features/home/presentation/views/home_view.dart';
import 'package:books_app/features/splash/presentation/views/widgets/splash_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    getDelayed();
  }

  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
        body: SplashViewBody());
  }

  void getDelayed()
  {
    Future.delayed(const Duration(seconds: 5),()
    {
      GoRouter.of(context).push(AppRouter.Khomeview);
    },);

  }
}


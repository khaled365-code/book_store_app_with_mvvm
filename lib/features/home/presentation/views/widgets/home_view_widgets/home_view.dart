

import 'package:books_app/features/home/presentation/views/widgets/home_view_widgets/homeview_body.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {

  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: HomeViewBody(),

    );
  }
}



import 'package:books_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';


class SearchView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(child: SearchViewBody(),),
    );
  }
}

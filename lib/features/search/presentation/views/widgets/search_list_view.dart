import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/best_seller_item.dart';


class SearchListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics:  NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => BestSellerItem(),
            separatorBuilder: (context, index) => SizedBox(height: 15,),
            itemCount: 100
        ),
    );
  }
}

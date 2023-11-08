import 'package:flutter/material.dart';

import 'best_seller_item.dart';


class BestSellerListView extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20),
      child: ListView.separated(
        padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => BestSellerItem(),
            separatorBuilder: (context, index) => SizedBox(height: 15,),
            itemCount: 50
      ),
    );
  }
}

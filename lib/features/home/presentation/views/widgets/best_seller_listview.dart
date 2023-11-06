import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'best_seller_item.dart';


class BestSellerListView extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child: ListView.separated(
        padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => BestSellerItem(),
            separatorBuilder: (context, index) => SizedBox(height: 15,),
            itemCount: 50
      ),
    );
  }
}

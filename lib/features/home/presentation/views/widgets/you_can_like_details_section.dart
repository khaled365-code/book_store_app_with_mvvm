
import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';
import 'details_list_view.dart';

class SuggestionsSection extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children:
       [
         Padding(
           padding: EdgeInsets.only(left: 16),
           child: Text(
             'You can also like',
             style:
             Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
           ),
         ),
         const SizedBox(
           height: 20,
         ),
         DetailsListView(),
       ],
     );
  }
}

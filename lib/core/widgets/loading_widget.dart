

import 'package:flutter/material.dart';



class CustomLoadingWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:100),
      child: Center(child: CircularProgressIndicator()),
    );
  }
}

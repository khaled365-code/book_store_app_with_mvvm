

import 'package:flutter/material.dart';

void getScaffoldMessenger(context,String? url)
{
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Cannot launch $url') )
  );
}
import 'package:flutter/material.dart';

class SizeProvider {
  static Size getsize(BuildContext context) => MediaQuery.of(context).size;
}

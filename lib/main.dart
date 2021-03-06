import 'package:car/category/category_body.dart';
import 'package:car/controller/controller.dart';

import 'package:car/screens/category_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CarCategoryScreen(),
    );
  }
}

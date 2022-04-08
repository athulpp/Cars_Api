import 'package:car/category/category_body.dart';
import 'package:car/const/materialbutton.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarCategoryScreen extends StatelessWidget {
  const CarCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: Column(
          children: [
            ListView(shrinkWrap: true, children: [
              Container(
                color: Colors.black,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomButton(
                        onPressed: () {},
                        text: 'Suv',
                      ),
                      CustomButton(
                        onPressed: () {},
                        text: 'Sedan',
                      ),
                      CustomButton(
                        onPressed: () {},
                        text: 'Sedan',
                      ),
                      CustomButton(
                        onPressed: () {},
                        text: 'Sedan',
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            CategoryBody(),
          ],
        ));
  }
}

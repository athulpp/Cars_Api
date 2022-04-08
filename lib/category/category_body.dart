import 'package:car/const/const.dart';
import 'package:car/controller/controller.dart';

import 'package:car/screens/full_cars_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
          future: getAllCars(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              List uri = allCarlist;
              print(uri);
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: uri.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (() {
                        Get.to(() => AllCarsList());
                      }),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              border: Border.all(color: Colors.grey.shade200),
                              shape: BoxShape.rectangle),
                          width: 300,
                          height: 400,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    uri[index]['car_name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(uri[index]['car_name']),
                                  ),
                                ],
                              ),
                              Center(
                                  child: Image.network(
                                'https://cdn.pixabay.com/photo/2018/05/22/01/37/icon-3420270_1280.png',
                                scale: 5,
                              )),
                              Card(
                                color: Colors.blueAccent.shade100,
                                child: Row(
                                  children: [
                                    Icon(Icons.car_repair),
                                    horizontalSize,
                                    Text(uri[index]['car_transmission']),
                                    horizontalSize,
                                    Text('Test.07453'),
                                  ],
                                ),
                              ),
                              verticalSize,
                              Card(
                                color: Colors.blueAccent.shade100,
                                child: Row(
                                  children: [
                                    Icon(Icons.car_repair),
                                    horizontalSize,
                                    Text(uri[index]['car_wheelType']),
                                    horizontalSize,
                                    Text('Test.07453'),
                                  ],
                                ),
                              ),
                              verticalSize,
                              Card(
                                color: Colors.blueAccent.shade100,
                                child: Row(
                                  children: [
                                    Icon(Icons.car_repair),
                                    horizontalSize,
                                    Text(uri[index]['car_headlightType']),
                                    horizontalSize,
                                    Text('Test.07453'),
                                  ],
                                ),
                              ),
                              verticalSize,
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }
            return CircularProgressIndicator();
          })),
    );
  }
}

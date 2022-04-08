import 'package:car/controller/controller.dart';
import 'package:flutter/material.dart';

class AllCarsList extends StatelessWidget {
  const AllCarsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          elevation: 0,
        ),
        body: FutureBuilder(
            future: categories(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                List uri = categorylist;
                print(uri);
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: uri.length,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            width: 350,
                            height: 100,
                            child: ListTile(
                              leading: Column(
                                children: [
                                  Container(
                                    width: 50,
                                    child: Image.network(
                                      'https://cdn.pixabay.com/photo/2018/05/22/01/37/icon-3420270_1280.png',
                                      scale: 25,
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    child: Text(
                                      uri[index]['category_name'],
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                  const VerticalDivider(
                                    width: 20,
                                    thickness: 20,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              title: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.car_repair,
                                        color: Colors.red,
                                      ),
                                      Text('Transmission   '),
                                      Text('   Test0.7453'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle_outlined,
                                        color: Colors.red,
                                      ),
                                      Text('Wheel Type   '),
                                      Text('       Wheeltest'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.car_repair_sharp,
                                        color: Colors.red,
                                      ),
                                      Text('Suspension    '),
                                      Text('      Dual345'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.lightbulb_outline,
                                        color: Colors.red,
                                      ),
                                      Text('Head Light   '),
                                      Text('        Test.07453'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade100,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white, spreadRadius: 20),
                              ],
                            ),
                          ),
                        )
                      ]);
                    });
              }
              return CircularProgressIndicator();
            })));
  }
}

import 'dart:convert';


import 'package:http/http.dart' as http;

List categorylist = [];

List allCarlist = [];

Future categories() async {
  final response = await http.get(Uri.parse(
      'https://mobiledev.refogen.com/api/v1/categories/getAllCategories'));
  final Map cat = json.decode(response.body);
  categorylist = cat['data'];
  return categorylist;
}

Future getAllCars() async {
  // Map<String, dynamic> carData;
  final response = await http
      .get(Uri.parse('https://mobiledev.refogen.com/api/v1/cars/getAllCars'));
  final Map data = json.decode(response.body);
  allCarlist = data['data'];

  return allCarlist;
}


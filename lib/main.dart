import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:storeapp/screens/home_page.dart';
import 'package:storeapp/screens/update_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}

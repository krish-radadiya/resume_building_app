import 'package:flutter/material.dart';
import 'package:resume_building_app/screens/details.dart';
import 'package:resume_building_app/screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const homepage(),
        'details': (context) => const detailspage(),
      },
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_building_app/screens/build_option.dart';
import 'package:resume_building_app/screens/home_page.dart';
import 'package:resume_building_app/screens/splesh_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const splesh_screen(),
        'home': (context) => const homepage(),
        'Build': (context) => const Buildoption(),
      },
    ),
  );
}

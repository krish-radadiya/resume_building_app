import 'package:flutter/material.dart';
import 'package:resume_building_app/screens/build_option.dart';
import 'package:resume_building_app/screens/contact_info.dart';
import 'package:resume_building_app/screens/homepage.dart';
import 'package:resume_building_app/screens/personal_details.dart';
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
        'contact_info': (context) => const ContectInfo(),
        'personal_details': (context) => const PersonalDetails(),
      },
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:resume_building_app/utils/global.dart';

class reference_screen extends StatefulWidget {
  const reference_screen({super.key});

  @override
  State<reference_screen> createState() => _reference_screenState();
}

class _reference_screenState extends State<reference_screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: Globals.bgColor,
        title: Text(
          "References",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey.withOpacity(0.4),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                height: h * 0.40,
                width: w * 0.9,
                color: Globals.textColor,
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        height: h * 0.45,
                        width: w * 0.9,
                        color: Globals.textColor,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

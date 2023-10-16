import 'package:flutter/material.dart';
import 'package:resume_building_app/utils/global.dart';

class Buildoption extends StatefulWidget {
  const Buildoption({super.key});

  @override
  State<Buildoption> createState() => _BuildOptionState();
}

class _BuildOptionState extends State<Buildoption> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "BUILDER OPTIONS",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: width / 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 20,
                    spreadRadius: 8,
                    offset: Offset(3, -5),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: Globals.alldetails.map((e) {
                    return Stack(
                      alignment: Alignment(-0.9, -1),
                      children: [
                        Container(
                          height: height / 12,
                          width: width / 1.2,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100.withOpacity(0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: width / 4,
                                  ),
                                  Text(
                                    "${e['name']}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('contact_info');
                                },
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height / 12,
                          width: width / 6,
                          child: Image.asset(
                            e['icon'],
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

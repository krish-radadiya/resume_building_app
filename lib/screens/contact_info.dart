import 'package:flutter/material.dart';

class contactinfo extends StatefulWidget {
  const contactinfo({super.key});

  @override
  State<contactinfo> createState() => _contactinfoState();
}

class _contactinfoState extends State<contactinfo> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController ad1controller = TextEditingController();
  TextEditingController ad2ccontroller = TextEditingController();
  TextEditingController ad3ccontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue,
        title: Text(
          "Resume workspace",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "contact",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "photo",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 15,
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 500,
                    width: 380,
                    color: Colors.black12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.person,
                          size: 20,
                        ),
                        TextField(
                          controller: namecontroller,
                          decoration: InputDecoration(
                            hintText: "name",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

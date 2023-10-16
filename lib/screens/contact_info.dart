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
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          "Resume Builder",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 60,
              alignment: Alignment.topCenter,
              color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 13,
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "contact",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 13,
                          child: GestureDetector(
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                "Photo",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 13,
            child: Container(
              alignment: Alignment.topCenter,
              color: Colors.white,
              child: Container(
                color: Colors.grey.shade200,
                padding: const EdgeInsets.all(15),
                height: h * 0.53,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Icon(Icons.person, size: 50),
                        ),
                        Expanded(
                            flex: 4,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Name',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Icon(Icons.mail, size: 50),
                        ),
                        Expanded(
                          flex: 4,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Icon(Icons.phone_android, size: 50),
                        ),
                        Expanded(
                          flex: 4,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Phine number",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Icon(Icons.location_on, size: 50),
                        ),
                        Expanded(
                          flex: 4,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "No. building name ",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          flex: 4,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "ADDRESS LINE 1 ",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          flex: 4,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "ADDRESS LINE 2 ",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

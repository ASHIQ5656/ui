import 'package:flutter/material.dart';

class EndDrawer extends StatefulWidget {
  const EndDrawer({super.key});

  @override
  State<EndDrawer> createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      endDrawer: Builder(builder: (context) {
        return Drawer(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
              Container(
                height: 180,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "data:image/jpeg;base64,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"))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 65,
                        ),
                        Text(
                          "u/obiWan-kenobi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.3,
                          ),
                          Container(
                            height: 25,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 3,
                                  width: 15,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.green,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Online Status:On",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 35,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.orange.shade600,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "Create Avatar",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "data:image/jpeg;base64,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"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "172",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkbDdB_n-4497BJP_ud5CncAq4ajY0DK67Zw&s"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "5y 60d",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 63,
                  ),
                  Text(
                    "karma",
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    "Reddit age",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.person_pin),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "My profile",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.mode_standby),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Create a community",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.attach_money),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Reddit coins",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.shield_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Reddit Premium",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.save),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Saved",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.access_time_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "History",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.settings),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}

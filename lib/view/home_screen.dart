import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/models/community_model.dart';
import 'package:ui/view/chat_screen.dart';
import 'package:ui/view/community.dart';
import 'package:ui/view/drawer_page.dart';
import 'package:ui/view/inbox_Screen.dart';
import 'package:ui/view/profile_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  void displayDrawer(BuildContext context) => Scaffold.of(context).openDrawer();
  void displayEndDrawer(BuildContext context) =>
      Scaffold.of(context).openEndDrawer();

  void onPageChange(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    var user;
    return Scaffold(
      appBar: AppBar(
          title: const Text("Home"),
          centerTitle: false,
          leading: Builder(
              builder: (context) => IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => displayDrawer(context),
                  )),
          actions: [
            IconButton(
                icon: const Icon(Icons.search), onPressed: () => showSearch),
            Builder(
              builder: (context) => IconButton(
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=is&k=20&c=PJjJWl0njGyow3AefY7KVNuhkbw5r2skqFiCFM5kyic="),
                ),
                onPressed: () => displayEndDrawer(context),
              ),
            ),
          ]),
      drawer: DrawerPage(),
      endDrawer: EndDrawer(),
      bottomNavigationBar: Row(
        children: [
          Container(
            width: 478,
            height: 50,
            color: Colors.amber,
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                SizedBox(
                  width: 60,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Community(),
                          ));
                    },
                    icon: Icon(Icons.people)),
                SizedBox(
                  width: 60,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                SizedBox(
                  width: 60,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(),
                          ));
                    },
                    icon: Icon(Icons.chat)),
                SizedBox(
                  width: 60,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InboxScreen(),
                          ));
                    },
                    icon: Icon(Icons.notifications_none))
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui/view/community.dart';
import 'package:ui/view/drawer_page.dart';
import 'package:ui/view/home_screen.dart';
import 'package:ui/view/inbox_Screen.dart';
import 'package:ui/view/profile_drawer.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Home"),
          centerTitle: false,
          leading: Builder(
              builder: (context) => IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => (context),
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
                onPressed: () => (context),
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
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                    icon: Icon(Icons.home)),
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
                IconButton(onPressed: () {}, icon: Icon(Icons.chat)),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/chatroom.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(height: 10),
          const Text(
            "Welcome to chat!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60, right: 60, bottom: 4),
            child: Text(
              "Chat With other Redditors about your favourite topics",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                elevation: 0.0,
                primary: Theme.of(context).colorScheme.secondary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: const Text(
              "Explore channels",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

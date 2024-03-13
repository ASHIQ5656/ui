import 'package:flutter/material.dart';

import 'package:ui/models/community_model.dart';
import 'package:ui/view/chat_screen.dart';
import 'package:ui/view/drawer_page.dart';
import 'package:ui/view/home_screen.dart';
import 'package:ui/view/inbox_Screen.dart';
import 'package:ui/view/profile_drawer.dart';

class Community extends StatelessWidget {
  const Community({super.key});

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
                IconButton(onPressed: () {}, icon: Icon(Icons.people)),
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
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.trending_up,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Trending today",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 90,
                child: ListView.builder(
                    itemCount: CommunityPost.trendingpost.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final post = CommunityPost.trendingpost[index];
                      return Container(
                        width: 150,
                        height: 90,
                        margin: const EdgeInsets.only(right: 8.0),
                        child: Stack(
                          children: [
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(post.imagepath),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: const LinearGradient(
                                  colors: [Colors.black, Colors.transparent],
                                  begin: Alignment.center,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  post.title,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

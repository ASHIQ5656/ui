import 'package:flutter/material.dart';
import 'package:ui/view/chat_screen.dart';
import 'package:ui/view/community.dart';
import 'package:ui/view/drawer_page.dart';
import 'package:ui/view/home_screen.dart';
import 'package:ui/view/message_tab_container.dart';
import 'package:ui/view/notification_tab_container.dart';
import 'package:ui/view/profile_drawer.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen>
    with TickerProviderStateMixin {
  late final TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        ],
      ),
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
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(),
                        ),
                      );
                    },
                    icon: Icon(Icons.chat)),
                SizedBox(
                  width: 60,
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_none)),
              ],
            ),
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 2.0,
                        offset: const Offset(1.0, 1.0),
                      )
                    ]),
                child: SizedBox(
                  width: 250,
                  child: TabBar(
                      controller: _controller,
                      indicatorColor: Theme.of(context).colorScheme.secondary,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        const Tab(text: "Notifications"),
                        const Tab(text: "Message"),
                      ]),
                ),
              ),
            )
          ];
        },
        body: TabBarView(controller: _controller, children: const [
          NotificationTabContainer(),
          MessageTabContainer()
        ]),
      ),
    );
  }
}

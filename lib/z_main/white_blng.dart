import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  static const route = 'HOME';

  //final postRefreshKey = GlobalKey<RefreshIndicatorState>();
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: NestedScrollView(
            floatHeaderSlivers: true,
            physics: const BouncingScrollPhysics(),
            headerSliverBuilder: (context, isScrolled) => [
              SliverAppBar(
                systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.white,
                ),
                backgroundColor: Colors.white,
                floating: true,
                leadingWidth: 75,
                leading: GestureDetector(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("sdsds"),
                  ),
                ),
                title: const Text('Zagel'),
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.settings,
                    ),
                    onPressed: () {},
                  ),
                ],
                elevation: 0,
                scrolledUnderElevation: 0,
              ),
            ],
            body: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  child: const TabBar(
                    tabs: [
                      Tab(
                        text: 'Posts',
                      ),
                      Tab(
                        text: 'Chats',
                      ),
                      Tab(
                        text: 'Users',
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: TabBarView(
                    children: [
                      Container(color: Colors.amber),
                      Container(color: Colors.red),
                      ListView.builder(
                        key: UniqueKey(),
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.black,
                            height: 120,
                          ),
                        ),
                        itemCount: 60,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

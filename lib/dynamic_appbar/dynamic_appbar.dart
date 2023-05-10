import 'package:ck_linecode/dynamic_appbar/constanta.dart';
import 'package:ck_linecode/dynamic_appbar/palette.dart';
import 'package:ck_linecode/dynamic_appbar/widgets/icon_txt_row.dart';
import 'package:ck_linecode/dynamic_appbar/widgets/list_content.dart';
import 'package:flutter/material.dart';

class DynamicAppbar extends StatefulWidget {
  const DynamicAppbar({super.key});

  @override
  State<DynamicAppbar> createState() => _DynamicAppbarState();
}

class _DynamicAppbarState extends State<DynamicAppbar> {
  late ScrollController _scrollController;
  bool lastStatus = true;
  double height = 390;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset > (height - kToolbarHeight);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const Drawer(),
      backgroundColor: Palette.onyx,
      body: SafeArea(
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              leading: const BackButton(),
              // leading: _isShrink ? const BackButton() : null,
              pinned: true,
              floating: true,
              backgroundColor: Palette.onyx,
              expandedHeight: height,
              flexibleSpace: FlexibleSpaceBar(
                title: _isShrink
                    ? const Text('pmatatias Statistic',
                        style: TextStyle(fontSize: 16))
                    : const SizedBox(),
                background: Container(
                  margin: const EdgeInsets.only(top: kToolbarHeight-16),
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: CircleAvatar(
                                  backgroundColor: Palette.sunset,
                                  radius: 30,
                                  backgroundImage: Image.asset(
                                          'assets/pmatatias.png',
                                          fit: BoxFit.cover)
                                      .image),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                // color: Colors.blue,
                                margin: const EdgeInsets.only(top: 16),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Matatias Situmorang (pmatatias)",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      // Divider(),
                                      SizedBox(height: 8),
                                      Text(
                                        "Flutter developer | Blogger | Open-source \nenthusiast",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ]),
                              ),
                            )
                          ]),
                      const SizedBox(height: 6),
                      const Divider(color: Colors.white, height: 16),
                      const Text("Lorem:", style: kTxtSubtitleSM),
                      const SizedBox(height: 4),
                      const Text(
                        klongLorem,
                        style: kTxtWhiteSemi,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 6),
                      const Divider(color: Colors.white, height: 16),
                      const Text("Ipsum:", style: kTxtSubtitleSM),
                      const SizedBox(height: 4),
                      const IconTxtRow(
                          iconData: Icons.location_city,
                          name: "Lorem Ipsum Dolor, PT."),
                      const IconTxtRow(iconData: Icons.phone, name: "0xx-xxx"),
                      const IconTxtRow(
                          iconData: Icons.mail, name: "loremipsum@mail.com"),
                      // const SizedBox(height: 8),
                      const Divider(color: Colors.white, height: 16),
                      const Text("Rank:", style: kTxtSubtitleSM),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 3.0),
                          child: Text("101", style: kTxtWhiteSemi)),
                          const SizedBox(height: 4)
                    ],
                  ),
                ),
              ),
            )
          ],
          body: const ContentListView(),
        ),
      ),
    );
  }
}
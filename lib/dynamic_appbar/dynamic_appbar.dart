import 'package:ck_linecode/dynamic_appbar/palette.dart';
import 'package:ck_linecode/dynamic_appbar/widgets/list_content.dart';
import 'package:flutter/material.dart';

import 'background_appbar.dart';

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
                background: const MyBackgroundAppbar()
              ),
            )
          ],
          body: const ContentListView(),
        ),
      ),
    );
  }
}
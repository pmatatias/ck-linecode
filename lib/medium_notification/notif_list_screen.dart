import 'package:ck_linecode/medium_notification/shimmer_widget.dart';
import 'package:flutter/material.dart';

import 'notif_model.dart';
import 'notif_row.dart';

Future<bool> loading() async {
  await Future.delayed(const Duration(seconds: 4));
  return Future.value(true);
}

class NotifScreen extends StatelessWidget {
  const NotifScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0.8,
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
        title: const Text("Activity",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            textScaleFactor: 0.9),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmarks_outlined), label: "Bookmark"),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('assets/pmatatias.png'),
                  width: 24,
                  height: 24,
                  color: null,
                ),
                label: "Profil"),
          ]),
      body: FutureBuilder<bool>(
          future: loading(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const ShimmerWidget();
            } else {
              return RefreshIndicator(
                onRefresh: loading,
                child: ListView.separated(
                  separatorBuilder:(context, idx)=> const SizedBox(height: 1),
                  itemCount: notifData.length,
                  itemBuilder: (context, index) =>
                      NotifRow(data: notifData[index]),
                ),
              );
            }
          }),
    );
  }
}

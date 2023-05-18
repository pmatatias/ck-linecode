import 'package:ck_linecode/medium_notification/notif_model.dart';
import 'package:flutter/material.dart';

import 'notif_row.dart';

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
      body: ListView.builder(
        itemCount: notifData.length,
        itemBuilder: (context, index) => NotifRow(
          data: notifData[index],
        ),
      ),
    );
  }
}

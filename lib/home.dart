import 'package:ck_linecode/custom_table/my_table.dart';
import 'package:ck_linecode/flutter_notes/flitnots.dart';
import 'package:ck_linecode/parent_child_method/parent_widget.dart';
import 'package:ck_linecode/path_animate_bing/four.dart';
import 'package:ck_linecode/reactjs_card/dashboard_view.dart';
import 'package:ck_linecode/validating/valid_page.dart';
import 'package:flutter/material.dart';

import 'animea/view_voo.dart';
import 'custompain/myview.dart';
import 'dart_extension_4/abs_coordinate_widget.dart';
import 'dart_extension_5/demo.dart';
import 'dynamic_appbar/dynamic_appbar.dart';
import 'iframe_attach_file.dart/webview_screen.dart';
import 'medium_notification/notif_list_screen.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("100K Line Code")),
      body: ListView(
        children: const [
          RowTile(title: "Flutter ntoes", page: FluttenotsView()),
          RowTile(title: "Dynamic Header", page: DynamicAppbar()),
          RowTile(title: "Custom Table", page: TableView()),
          RowTile(title: "Validate Everything", page: ValidatingPage()),
          RowTile(title: "Experiment with bing chat", page: FourthTry()),
          RowTile(title: "Widget Coordinate", page: DartExtension4()),
          RowTile(title: "Update List", page: ListUpdateDemo()),
          RowTile(title: "Attach File WebView/Iframe", page: PreviewWebpage()),
          RowTile(title: "Medium Notification Clone", page: NotifScreen()),
          RowTile(title: "Responsive Card Dashboard", page: DashboardView()),
          RowTile(title: "OVO Loading Clone", page: AnimeaScreen()),
          RowTile(title: "Wave Animation", page: MyView()),
          RowTile(
              title: "Invoke Children Method From Parent",
              page: ParentWidget()),
        ],
      ),
    );
  }
}

class RowTile extends StatelessWidget {
  const RowTile({super.key, required this.title, required this.page});
  final String title;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade50,
      child: ListTile(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => page)),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right_sharp),
        visualDensity: const VisualDensity(vertical: -1),
      ),
    );
  }
}

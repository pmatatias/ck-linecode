
import 'package:flutter/material.dart';

class FluttenotsView extends StatefulWidget {
  const FluttenotsView({super.key});

  @override
  State<FluttenotsView> createState() => _FluttenotsViewState();
}

class _FluttenotsViewState extends State<FluttenotsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter notes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// position icon
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.check),
                label: const Text("Save"),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: const Icon(Icons.check),
                icon: const Text("Save"),
              ),
        
              /// Visual density
              const Card(
                  color: Colors.amber,
                  child: ListTile(title: Text("Default ListTile widget"))),
              const Card(
                  color: Colors.amberAccent,
                  child: ListTile(
                      title: Text("ListTile widget with padding zero"),
                      contentPadding: EdgeInsets.all(0))),
              const Card(
                  color: Colors.yellow,
                  child: ListTile(
                      title: Text("ListTile widget with dense true "),
                      dense: true)),
              const Card(
                  color: Colors.yellowAccent,
                  child: ListTile(
                      title: Text("ListTile widget with density -4"),
                      visualDensity: VisualDensity(vertical: -4))),
        
              // ElevatedButton(
              //     onPressed: () {
              //       showDialog(
              //         context: context,
              //         builder: (context) => const AlertDialog(
              //           insetPadding: EdgeInsets.symmetric(horizontal: 10),
              //           content: Column(
              //             mainAxisSize: MainAxisSize.min,
        
              //             children: [
              //               Text(loremlong),
              //             ],
              //           ),
              //         ),
              //       );
              //     },
              //     child: const Text("Show leaving ")),
              //     ElevatedButton(
              //     onPressed: () {
              //       showDialog(
              //         context: context,
              //         builder: (context) => const AlertDialog(

              //           insetPadding: EdgeInsets.symmetric(horizontal: 20),
              //           content: SingleChildScrollView(
              //             child: Column(
              //               mainAxisSize: MainAxisSize.min,
              //               children: [
              //                 Text(loremlong),
              //               ],
              //             ),
              //           ),
              //         ),
              //       );
              //     },
              //     child: const Text("Show dialog")),
              // ElevatedButton(
              //     onPressed: () async {
              //       showDialog<bool>(
              //         context: context,
              //         builder: (context) => AlertDialog(
              //           content: SizedBox(
              //             width: MediaQuery.sizeOf(context).width,
              //             child: Column(
              //               mainAxisSize: MainAxisSize.min,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 const Text(
              //                   "Do you want to save your changes before leaving?",
              //                   style: TextStyle(
              //                     fontWeight: FontWeight.w500,
              //                     fontSize: 16,
              //                   ),
              //                 ),
              //                 const SizedBox(height: 20),
              //                 Row(
              //                   mainAxisSize: MainAxisSize.min,
              //                   children: [
              //                     Expanded(
              //                       child: MaterialButton(
              //                         color: Colors.grey.shade300,
              //                         shape: RoundedRectangleBorder(
              //                           borderRadius: BorderRadius.circular(6.0),
              //                         ),
              //                         onPressed: () =>
              //                             Navigator.of(context).pop(),
              //                         child: const Text("Cancel",
              //                             style: TextStyle(
              //                                 fontWeight: FontWeight.w500,
              //                                 color: Colors.black)),
              //                       ),
              //                     ),
              //                     const SizedBox(width: 20),
              //                     Expanded(
              //                       child: MaterialButton(
              //                         shape: RoundedRectangleBorder(
              //                           borderRadius: BorderRadius.circular(6.0),
              //                         ),
              //                         color: Colors.blue,
              //                         padding:
              //                             const EdgeInsets.symmetric(vertical: 8),
              //                         onPressed: () =>
              //                             Navigator.of(context).pop(),
              //                         child: const Text("Save",
              //                             style: TextStyle(
              //                                 fontWeight: FontWeight.w500,
              //                                 color: Colors.white)),
              //                       ),
              //                     ),
              //                   ],
              //                 )
              //               ],
              //             ),
              //           ),
              //         ),
              //       );
              //     },
              //     child: const Text("Show dialog"))
            ],
          ),
        ),
      ),
    );
  }
}


Future<bool> confirmBeforeLeavepage(BuildContext context, {String? msg}) async {
  return await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog.adaptive(
          title: Text(msg ??
              "Are you sure you want to leave this page? \nAny UNSAVED changes will be lost!"),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text("Yes", style: TextStyle(color: Colors.red))),
            TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text("Cancel"))
          ],
        ),
      ) ??
      false;
}
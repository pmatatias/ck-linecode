import 'dart:io';

import 'package:ck_linecode/gmaps_webview/place_info.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapsWebviewScreen extends StatefulWidget {
  const MapsWebviewScreen({super.key});

  @override
  State<MapsWebviewScreen> createState() => _MapsWebviewScreenState();
}

class _MapsWebviewScreenState extends State<MapsWebviewScreen> {
  late WebViewController controller;
  ValueNotifier<PlaceInfo> placeInfo = ValueNotifier<PlaceInfo>(PlaceInfo());

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onUrlChange: (change) async {
            RegExp regex = RegExp(r'place\/(.+?)\/@(-?\d+\.\d+),(-?\d+\.\d+)');
            // final titless = await controller.getTitle() ?? '';
            // print(titless);
            final decodeurl = Uri.decodeFull(change.url ?? '');
            RegExpMatch? match = regex.firstMatch(decodeurl);
            if (match != null) {
              String placeName = match.group(1)!.replaceAll("+", " ");
              String latitude = match.group(2)!;
              String longitude = match.group(3)!;
              placeInfo.value = PlaceInfo(
                  name: placeName, latitude: latitude, longitude: longitude);
              print(placeInfo.value);
            }
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) async {
            if (request.url == initMapUrl) {
              return NavigationDecision.navigate;
            } else {
              print(request.url);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.blue,
                  content: Text(
                    "Please stick with the map here",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );

              return NavigationDecision.prevent;
            }
          },
        ),
      )
      ..loadRequest(Uri.parse(initMapUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Flutter Simple Example')),
      body: Column(
        children: [
          SizedBox(
              height:
                  Platform.isIOS ? 15 : MediaQuery.of(context).viewPadding.top),
          Expanded(child: WebViewWidget(controller: controller)),
          Container(
            color: Colors.green,
            padding: const EdgeInsets.fromLTRB(12, 4, 2, 12),
            constraints: const BoxConstraints(maxHeight: 150, minHeight: 30),
            child: ValueListenableBuilder<PlaceInfo>(
                valueListenable: placeInfo,
                builder: (context, val, _) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text("Selected Location:",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.white)),
                              const Divider(height: 4, color: Colors.grey),
                              val.isEmpty()
                                  ? const Text('-',
                                      style: TextStyle(color: Colors.white))
                                  : Text(
                                      "${val.name}\nlat:${val.latitude},\nlong:${val.longitude}",
                                      maxLines: 5,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                            ]),
                      ),
                      const SizedBox(width: 6),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (!val.isEmpty())
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () =>
                                  Navigator.pop(context, placeInfo.value),
                              color: Colors.deepPurple,
                              child: const Text(
                                "Save",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () => Navigator.pop(context),
                            color: Colors.yellow,
                            child: const Text("Cancel"),
                          ),
                        ],
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}

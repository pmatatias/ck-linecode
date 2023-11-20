import 'package:ck_linecode/gmaps_webview/map_webview.dart';
import 'package:ck_linecode/gmaps_webview/place_info.dart';
import 'package:flutter/material.dart';

InputDecoration kInputDecor = const InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 0.8),
    ),
    filled: true,
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 0.8),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue, width: 0.8),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueGrey, width: 0.8),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 0.8),
    ),
    isCollapsed: true,
    contentPadding: EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 8,
    ));

class FormLocation extends StatefulWidget {
  const FormLocation({super.key});

  @override
  State<FormLocation> createState() => _FormLocationState();
}

class _FormLocationState extends State<FormLocation> {
  final fullCtrl = TextEditingController();
  final cityCtrl = TextEditingController();
  final stateCtrl = TextEditingController();
  final postalCodeCtrl = TextEditingController();
  final latCtrl = TextEditingController();
  final lonCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.white, child: const Text("Form name")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          const SizedBox(height: 5),
          TextButton.icon(
              onPressed: () async {
                Navigator.push<PlaceInfo>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MapsWebviewScreen(),
                    )).then((value) {
                  if (value != null) {
                    fullCtrl.text = value.name;
                    cityCtrl.text = value.city;
                    stateCtrl.text = value.stateNpostalIndo.$1;
                    postalCodeCtrl.text = value.stateNpostalIndo.$2;

                    latCtrl.text = value.latitude;
                    lonCtrl.text = value.longitude;
                  }
                });
              },
              icon: const Icon(Icons.pin_drop_sharp),
              label: const Text("Pick location")),
          const SizedBox(height: 10),
          const Text("Full Address"),
          const SizedBox(height: 5),
          TextField(
            controller: fullCtrl,
            minLines: 3,
            maxLines: null,
            decoration: kInputDecor,
          ),
          const SizedBox(height: 20),
          const Text("City"),
          const SizedBox(height: 5),
          TextField(
            controller: cityCtrl,
            maxLines: null,
            decoration: kInputDecor,
          ),
          const SizedBox(height: 20),
          const Text("State"),
          const SizedBox(height: 5),
          TextField(
            controller: stateCtrl,
            maxLines: null,
            decoration: kInputDecor,
          ),
          const SizedBox(height: 20),
          const Text("Postal Code"),
          const SizedBox(height: 5),
          TextField(
            controller: postalCodeCtrl,
            maxLines: null,
            decoration: kInputDecor,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Latitude"),
                    const SizedBox(height: 5),
                    TextField(
                      controller: latCtrl,
                      maxLines: null,
                      decoration: kInputDecor,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Longitude"),
                    const SizedBox(height: 5),
                    TextField(
                      controller: lonCtrl,
                      maxLines: null,
                      decoration: kInputDecor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }
}

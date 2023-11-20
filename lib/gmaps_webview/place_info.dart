import 'package:collection/collection.dart';

const initMapUrl = "https://www.google.com/maps";

class PlaceInfo {
  String name;
  String latitude;
  String longitude;

  PlaceInfo({
    this.latitude = "",
    this.longitude = "",
    this.name = "",
  });
  bool isEmpty() => name.isEmpty && latitude.isEmpty && longitude.isEmpty;
  @override
  String toString() {
    return "$name ($latitude,$longitude)";
  }

  String get city {
    final reslt = name.split(',').firstWhereOrNull((element) {
          // print(element + element.startsWith("Kabupaten").toString());
          return element.startsWith(" Kota") ||
              element.startsWith(" Kabupaten") ||
              element.startsWith(" Kab.");
        }) ??
        '';
    return reslt;
  }

  (String, String) get stateNpostalIndo {
    final citypostal = name.split(',').lastOrNull ?? "";
    final postal = citypostal.split(' ').lastOrNull ?? '';
    if (num.tryParse(postal) != null) {
      //check if its number
      final city = citypostal.replaceAll(postal, "");

      return (city, postal);
    } else {
      return (citypostal, "");
    }
  }
}

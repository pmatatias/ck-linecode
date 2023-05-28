class NotifModel {
  int id;
  String articleTitle;
  String userName;
  NotifType notifType;
  String? imageAsset;
  String time;
  String readingListName;

  NotifModel({
    this.id = 0,
    required this.userName,
    required this.notifType,
    this.articleTitle = "",
    this.imageAsset,
    required this.time,
    this.readingListName = "",
  });

  static NotifModel empty() =>
      NotifModel(userName: "", notifType: NotifType(id: 0, name: ""), time: "");
}

/// type to cover
/// for example:
/// 1: "responded to"
/// 2: "clapped for"
/// 3: "followed you"
/// 4: "highligted"
/// 5: "added your story"
///
///has n fans
///published
///subscribed to email

class NotifType {
  int id;
  String name;
  NotifType({required this.id, required this.name});
}

List<NotifModel> notifData = [
  NotifModel(
      userName: "Pmatatias",
      notifType: NotifType(id: 1, name: "responded to"),
      articleTitle:
          "Level up my flutter loading widget with Logo + Flutter animation",
      id: 1,
      imageAsset: "assets/pmatatias.png",
      time: "2023-05-29 16:23:32.000"),
  NotifModel(
      id: 2,
      userName: "John Doe",
      notifType: NotifType(id: 2, name: "clapped for"),
      articleTitle:
          "Level up my flutter loading widget with Logo + Flutter animation",
      time: "2023-05-28 10:23:32.000"),
  NotifModel(
      id: 3,
      userName: "Situmorang",
      notifType: NotifType(id: 3, name: "followed you"),
      time: "2023-05-25 16:23:32.000"),
  NotifModel(
      userName: "Potatoo",
      notifType: NotifType(id: 1, name: "responded to"),
      articleTitle: "The title of the article will be here",
      id: 4,
      imageAsset: "assets/mediumnotif.jpeg",
      time: "2023-05-25 16:23:32.000"),
  NotifModel(
      id: 5,
      userName: "Uhuy yay",
      notifType: NotifType(id: 3, name: "followed you"),
      time: "2023-05-24 16:23:32.000"),
  NotifModel(
      id: 6,
      userName: "Kentang",
      notifType: NotifType(id: 4, name: "highligted"),
      articleTitle: "The title of the article will be here",
      time: "2023-05-22 16:23:32.000"),
  NotifModel(
      id: 7,
      userName: "Pmatatias",
      notifType: NotifType(id: 5, name: "added your story"),
      articleTitle: "The title of the article will be here",
      imageAsset: "assets/pmatatias.png",
      time: "2023-05-20 16:23:32.000"),
  NotifModel(
      id: 8,
      userName: "Pmatatias",
      notifType: NotifType(id: 2, name: "clapped for"),
      imageAsset: "assets/pmatatias.png",
      articleTitle: "The title of the article will be here",
      time: "2023-05-20 16:23:32.000"),
  NotifModel(
      id: 9,
      userName: "Tralala",
      notifType: NotifType(id: 3, name: "followed you"),
      time: "2023-05-20 16:23:32.000"),
  NotifModel(
      id: 10,
      userName: "Goreng",
      notifType: NotifType(id: 3, name: "followed you"),
      time: "2023-05-19 16:23:32.000"),
  NotifModel(
      id: 11,
      userName: "Bawang",
      notifType: NotifType(id: 4, name: "highligted"),
      articleTitle: "The title of the article will be here",
      time: "2023-05-12 16:23:32.000"),
];

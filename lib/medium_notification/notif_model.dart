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
      time: "59 minutes ago"),
  NotifModel(
      id: 2,
      userName: "John Doe",
      notifType: NotifType(id: 2, name: "clapped for"),
      articleTitle:
          "Level up my flutter loading widget with Logo + Flutter animation",
      time: "2 days ago"),
  NotifModel(
      id: 3,
      userName: "Situmorang",
      notifType: NotifType(id: 3, name: "followed you"),
      time: "6 days ago"),
  NotifModel(
      userName: "Potatoo",
      notifType: NotifType(id: 1, name: "responded to"),
      articleTitle: "The title of the article will be here",
      id: 4,
      imageAsset: "assets/mediumnotif.jpeg",
      time: "3 days ago"),
  NotifModel(
      id: 5,
      userName: "Uhuy yay",
      notifType: NotifType(id: 3, name: "followed you"),
      time: "4 days ago"),
  NotifModel(
      id: 6,
      userName: "Kentang",
      notifType: NotifType(id: 4, name: "highligted"),
      articleTitle: "The title of the article will be here",
      time: "4 days ago"),
  NotifModel(
      id: 7,
      userName: "Pmatatias",
      notifType: NotifType(id: 5, name: "added your story"),
      articleTitle: "The title of the article will be here",
      imageAsset: "assets/pmatatias.png",
      time: "9 days ago"),
  NotifModel(
      id: 8,
      userName: "Pmatatias",
      notifType: NotifType(id: 2, name: "clapped for"),
      imageAsset: "assets/pmatatias.png",
      articleTitle: "The title of the article will be here",
      time: "9 days ago"),
];

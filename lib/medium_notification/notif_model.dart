class NotifModel {
  int id;
  String articleTitle;
  String userName;
  String notifType;
  String? imageAsset;
  String time;

  NotifModel({
    this.id = 0,
    required this.userName,
    required this.notifType,
    this.articleTitle = "",
    this.imageAsset,
    required this.time,
  });
}

List<NotifModel> notifData = [
  NotifModel(
      userName: "Pmatatias",
      notifType: "responded to",
      articleTitle:
          "Level up my flutter loading widget with Logo + Flutter animation",
      id: 1,
      imageAsset: "assets/pmatatias.png",
      time: "59 minutes ago"),
  NotifModel(
      id: 2,
      userName: "John Doe",
      notifType: "clapped for",
      articleTitle:
          "Level up my flutter loading widget with Logo + Flutter animation",
      time: "2 days ago"),
  NotifModel(
      id: 3,
      userName: "Situmorang",
      notifType: "followed you",
      time: "6 days ago"),
  NotifModel(
      userName: "Potatoo",
      notifType: "responded to",
      articleTitle: "The title of the article will be here",
      id: 4,
      imageAsset: "assets/mediumnotif.jpeg",
      time: "3 days ago"),
  NotifModel(
      id: 5,
      userName: "Uhuy yay",
      notifType: "followed you",
      time: "4 days ago"),
  NotifModel(
      id: 6,
      userName: "Kentang",
      notifType: "clapped for",
      articleTitle: "The title of the article will be here",
      time: "4 days ago"),
  NotifModel(
      id: 7,
      userName: "Pmatatias",
      notifType: "clapped for",
      articleTitle: "The title of the article will be here",
      imageAsset: "assets/pmatatias.png",
      time: "9 days ago"),
  NotifModel(
      id: 8,
      userName: "Pmatatias",
      notifType: "clapped for",
      imageAsset: "assets/pmatatias.png",
      articleTitle: "The title of the article will be here",
      time: "9 days ago"),
];

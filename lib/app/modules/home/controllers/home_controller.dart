import 'package:get/get.dart';

class Chats {
  String name;
  bool showVerified;
  String lastMessage;
  bool showTyping;
  bool showUnreadmessage;
  String unreadMessageCount;
  String image;
  String time;

  Chats({
    required this.name,
    required this.showVerified,
    required this.lastMessage,
    required this.showTyping,
    required this.showUnreadmessage,
    required this.unreadMessageCount,
    required this.image,
    required this.time,
  });
}

class HomeController extends GetxController {
  List<Chats> chats = [
    Chats(
      name: "John",
      showVerified: true,
      lastMessage: "Hii!",
      showTyping: false,
      showUnreadmessage: true,
      unreadMessageCount: "1",
      image: "assets/john.jpg",
      time: "13:10",
    ),
    Chats(
      name: "Tim",
      showVerified: true,
      lastMessage: "Hii!",
      showTyping: false,
      showUnreadmessage: false,
      unreadMessageCount: "1",
      image: "assets/tony.png",
      time: "13:10",
    ),
    Chats(
      name: "James",
      showVerified: false,
      lastMessage: "Hii!",
      showTyping: true,
      showUnreadmessage: true,
      unreadMessageCount: "10",
      image: "assets/jems.png",
      time: "13:10",
    ),
  ];
}

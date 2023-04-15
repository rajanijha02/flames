import 'package:flames/app/modules/home/views/chat_item_view.dart';
import 'package:flames/app/modules/home/views/story_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
                child: Image.asset(
                  "assets/profile.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Find Flames',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: const Color(0xFFFF5F8F),
              ),
            ),
            Image.asset(
              "assets/menu.png",
              height: 20,
              width: 20,
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 120,
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [
                            StoryView(
                              showLikes: true,
                              image: "assets/your_likes.png",
                              name: "Likes",
                              showVerified: false,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            StoryView(
                              showLikes: false,
                              image: "assets/tony.png",
                              name: "Tony",
                              showVerified: true,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            StoryView(
                              showLikes: false,
                              image: "assets/jems.png",
                              name: "James",
                              showVerified: true,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            StoryView(
                              showLikes: false,
                              image: "assets/john.jpg",
                              name: "John",
                              showVerified: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ChatItemView(
                          chats: controller.chats[index],
                        );
                      },
                      itemCount: controller.chats.length,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 200,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Material(
                elevation: 2,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/search.png",
                        height: 28,
                        width: 28,
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      Text(
                        'Search',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFB5B5B5),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Container(
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 36,
                  width: 36,
                  alignment: Alignment.center,
                  child: Image.asset("assets/home.png"),
                ),
                Container(
                  height: 36,
                  width: 36,
                  alignment: Alignment.center,
                  child: Image.asset("assets/web.png"),
                ),
                Container(
                  height: 36,
                  width: 36,
                  alignment: Alignment.center,
                  child: Image.asset("assets/calendar.png"),
                ),
                Container(
                  height: 36,
                  width: 36,
                  alignment: Alignment.center,
                  child: Image.asset("assets/chat.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

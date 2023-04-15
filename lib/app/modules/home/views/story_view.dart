import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryView extends GetView {
  StoryView({
    Key? key,
    required this.showLikes,
    required this.image,
    required this.name,
    required this.showVerified,
  }) : super(key: key);
  bool showLikes;
  String image;
  String name;
  bool showVerified;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Stack(
        children: [



          Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 110,
              width: Get.width * 0.25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(image),
              ),
            ),
          ),


          Container(
            width: Get.width * 0.25,
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 20,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  showVerified
                      ? const SizedBox(
                          width: 1,
                        )
                      : Container(),
                  showVerified
                      ? Image.asset(
                          "assets/check.png",
                          height: 12,
                          width: 12,
                          color: Colors.blue,
                        )
                      : Container(),
                ],
              ),
            ),
          ),

          
          !showLikes
              ? Container()
              : Container(
                  height: 120,
                  width: Get.width * 0.25,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/like.png",
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "20",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

import 'package:astro/app/config/constant.dart';
import 'package:astro/app/controllers/chat_controller.dart';
import 'package:astro/app/controllers/navigation_controller.dart';
import 'package:astro/app/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UserReviewCard extends StatelessWidget {
  List<User> user;

  UserReviewCard({Key? key, required this.user}) : super(key: key);

  final chatController = Get.put(ChatController());
  final navigationController = Get.put(NavigationController());
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            margin: EdgeInsets.only(top: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CircleAvatar(
                            maxRadius: 15,
                            child: ClipOval(
                              child: Image.asset(
                                user[index].profilePic,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            user[index].userName,
                            style: GoogleFonts.urbanist(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 245),
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            user[index].rating.toString(),
                            style: GoogleFonts.urbanist(
                                fontSize: 15, fontWeight: FontWeight.w400),
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                          ),
                          RatingBar.builder(
                            itemSize: 15,
                            initialRating: user[index].rating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(user[index].review.toString(),
                              style: GoogleFonts.urbanist(
                                  fontSize: 15, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    height10,
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: blackcolor.withOpacity(0.25),
                  blurRadius: 1.0, // soften the shadow
                  // spreadRadius: 5.0, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    1.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(10),
              color: whitecolor,
            ),
          ),
        );
      },
      shrinkWrap: true,
    );
  }
}

import 'package:astro/app/config/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatefulWidget {
  final dynamic category;

  const CategoryCard({this.category, Key? key}) : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: categoriesBoxColor.withOpacity(0.05),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        maxRadius: 30,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/icons/image1.png",
                            // colorBlendMode: BlendMode.colorBurn,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0XFFFF814C),
                    ),
                    Text(
                      "4.8",
                      style: GoogleFonts.urbanist(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Himani Singh",
                      style: GoogleFonts.urbanist(
                          color: primaryColor1,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                  Container(
                    height: 1,
                    width: 10,
                  ),
                  Text("Vedic , Taro"),
                  Text("English , Hindi"),
                  Text("Exp: 12 yrs"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 20),
              child: Column(
                children: [
                  ElevatedButton(
                      // style: ButtonStyle(minimumSize: Size(2, 3)),
                      onPressed: () {},
                      child: Text("Chat")),
                  Text("₹ 15/min")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

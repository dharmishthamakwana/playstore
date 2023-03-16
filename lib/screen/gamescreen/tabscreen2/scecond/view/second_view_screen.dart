import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/images/games/gameimage.dart';

class Topviewscreen extends StatefulWidget {
  const Topviewscreen({Key? key}) : super(key: key);

  @override
  State<Topviewscreen> createState() => _TopviewscreenState();
}

class _TopviewscreenState extends State<Topviewscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 583,
        width: double.infinity,
        child: ListView.builder(
            itemBuilder: (context, index) =>
                appBox2(gameImage[index], gameName[index], index + 1),
            itemCount: 15),
      ),
    );
  }

  Widget appBox2(String imgPath, String gName, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${index}.",
                style: GoogleFonts.lato(
                    color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("${imgPath}", fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${gName}",
                    style: GoogleFonts.lato(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Unity",
                      style:
                          GoogleFonts.lato(color: Colors.grey, fontSize: 10)),
                  SizedBox(
                    height: 2,
                  ),
                  Row(children: [
                    Text(
                      " 4.2",
                      style: GoogleFonts.lato(fontSize: 8, color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.black54,
                      size: 10,
                    )
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

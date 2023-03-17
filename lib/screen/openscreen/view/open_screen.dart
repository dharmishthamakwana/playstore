import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playstore/utils/images/app/appimages.dart';

class Openscreen extends StatefulWidget {
  const Openscreen({Key? key}) : super(key: key);

  @override
  State<Openscreen> createState() => _OpenscreenState();
}

class _OpenscreenState extends State<Openscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            ListTile(
                leading: Icon(Icons.arrow_back_rounded, color: Colors.black),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.search, color: Colors.black),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  )
                ])),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/games/ff.jpg")),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Free Fire ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Garena International |",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green.shade800,
                              letterSpacing: 1)),
                      Text("In-app Purchase",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              letterSpacing: 1)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("4.6*",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "95K reviews",
                          style: TextStyle(
                              fontSize: 11, color: Colors.grey.shade600),
                        )
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("5M+",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Download",
                          style: TextStyle(
                              fontSize: 11, color: Colors.grey.shade600),
                        )
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("E",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Everyone",
                          style: TextStyle(
                              fontSize: 11, color: Colors.grey.shade600),
                        )
                      ]),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green.shade800,
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: Text("Install",
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 150,
                child: ListView.builder(
                    itemBuilder: (context, index) => appAdBox(wcc2Img[index]),
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal)),
            ListTile(
                leading: Text("About this game",
                    style: GoogleFonts.lato(
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20)),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Discover the endless cricket tournament,with group and online",
                style: GoogleFonts.lato(
                    color: Colors.grey, letterSpacing: 1, fontSize: 14),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Reviews & Ratings",
                style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/open/rating.jpg"),
          ],
        ),
      ),
    );
  }

  Widget appAdBox(
    String path,
  ) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 150,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("${path}", fit: BoxFit.cover)),
    );
  }
}

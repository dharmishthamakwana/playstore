import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playstore/utils/images/app/appimages.dart';

class Appliactionscreen extends StatefulWidget {
  const Appliactionscreen({Key? key}) : super(key: key);

  @override
  State<Appliactionscreen> createState() => _AppliactionscreenState();
}

class _AppliactionscreenState extends State<Appliactionscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 583,
              width: double.infinity,
              child: ListView(
                children: [
                  ListTile(
                    leading: Text("Social Media App",
                        style: TextStyle(fontSize: 18)),
                    trailing: Icon(Icons.arrow_forward, color: Colors.black),
                  ),
                  Container(
                      height: 220,
                      child: ListView.builder(
                          itemBuilder: (context, index) => appAdBox(
                              appImage1[index],
                              appLogo1[index],
                              appName1[index]),
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal)),
                  Container(
                    height: 170,
                    width: double.infinity,
                    child: ListView.builder(
                        itemBuilder: (context, index) =>
                            appbox(appLogo2[index], appName2[index]),
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true),
                  ),
                  Container(
                      height: 220,
                      child: ListView.builder(
                          itemBuilder: (context, index) => appAdBox(
                              appImage2[index],
                              appLogo2[index],
                              appName2[index]),
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget appAdBox(String path, String logo, String name) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 150,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "${path}",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 50,
          width: 250,
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "${logo}",
                        fit: BoxFit.cover,
                      ))),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text("${name}",
                      style: TextStyle(fontSize: 15, letterSpacing: 1)),
                  Text("Social Media app",
                      style: TextStyle(fontSize: 10, letterSpacing: 1)),
                  Text("4.2* Rating",
                      style: TextStyle(fontSize: 9, letterSpacing: 1)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget appbox(String imgPath, String gName) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("${imgPath}", fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "${gName}",
              style: GoogleFonts.lato(
                  fontSize: 10, color: Colors.black, letterSpacing: 1),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(children: [
              Text(
                "4.2",
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
          ),
        ],
      ),
    );
  }
}

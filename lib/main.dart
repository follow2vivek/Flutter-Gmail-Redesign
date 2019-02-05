import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter_gmail_redesign/widget/header.dart';
import 'package:flutter_gmail_redesign/widget/mails.dart';
import 'package:flutter_gmail_redesign/widget/primary_mail.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          CommunityMaterialIcons.plus,
          color: Colors.black,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text(
                'PRIMARY',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'GoogleMedium',
                    color: Colors.black54),
              ),
            ),
            PrimaryMail(
              iconData: OMIcons.supervisorAccount,
              title: 'Social',
              msg: 'YouTube',
              count: '12 new',
              colors: Color(0xff1a73e8),
            ),
            PrimaryMail(
              iconData: OMIcons.localOffer,
              title: 'Promotions',
              msg: 'Think with Google',
              count: '18 new',
              colors: Color(0xff1e8e3e),
            ),
            PrimaryMail(
              iconData: OMIcons.forum,
              title: 'Forums',
              msg: 'Google Play',
              count: '25 new',
              colors: Color(0xff8024cd),
            ),
            Mails(
              sender: "Cecilia, Nik",
              title: "Trip to Yosemite",
              time: "2:13 PM",
              hasFile: true,
              msg: "Check out the planning document",
            ),
            Mails(
              sender: "Jeroen, Tino",
              title: "Coffee-making class",
              time: "12:57 PM",
              hasFile: false,
              msg: "Hi, I made a reservation",
            )
          ],
        ),
      ),
    );
  }
}

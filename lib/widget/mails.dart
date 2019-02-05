import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';

class Mails extends StatelessWidget {
  final String sender;
  final String title;
  final String msg;
  final String time;
  final bool hasFile;
  Mails(
      {@required this.sender,
      @required this.title,
      @required this.msg,
      @required this.time,
      @required this.hasFile});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 16, 16, 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  'https://avatars2.githubusercontent.com/u/24294081?s=460&v=4',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        this.sender,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'GoogleMedium'),
                      ),
                      Text(
                        this.time,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'GoogleRegular'),
                      ),
                    ],
                  ),
                ),
                Text(
                  this.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'GoogleMedium'),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          this.msg,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 16,
                              fontFamily: 'GoogleMedium'),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xffe6f4ea),
                            shape: BoxShape.rectangle),
                        child: Text(
                          'Trip',
                          style: TextStyle(
                              color: Color(0xff449e47),
                              fontSize: 12,
                              fontFamily: 'GoogleRegular'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          CommunityMaterialIcons.star_outline,
                          color: Colors.grey[700],
                        ),
                      )
                    ],
                  ),
                ),
                this.hasFile
                    ? Container(
                        width: 140,
                        height: 35,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.grey[400], width: 1),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              CommunityMaterialIcons.file_document_box,
                              color: Color(0xff1a73e8),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Yosemite Trip Document',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff1a73e8),
                                      fontFamily: 'GoogleMedium'),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container()
              ],
            ),
          )
        ],
      ),
    );
  }
}

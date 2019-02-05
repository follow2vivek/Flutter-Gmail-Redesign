import 'package:flutter/material.dart';

class PrimaryMail extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String msg;
  final String count;
  final Color colors;
  PrimaryMail(
      {@required this.iconData,
      @required this.title,
      @required this.msg,
      @required this.count,
      @required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 16, 16, 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(
            this.iconData,
            color: this.colors,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'GoogleMedium'),
                  ),
                  Text(
                    this.msg,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontFamily: 'GoogleRegular'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Text(
              this.count,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, fontFamily: 'GoogleMedium'),
            ),
            decoration: BoxDecoration(
                color: this.colors,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}

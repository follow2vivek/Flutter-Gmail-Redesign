import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 2.0,
            offset: Offset(0.2, 0.2),
            color: Colors.grey[400],
          )
        ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(
            CommunityMaterialIcons.menu,
            color: Colors.black,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Search mail",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontFamily: 'GoogleRegular',
                ),
              ),
            ),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://avatars2.githubusercontent.com/u/24294081?s=460&v=4'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sample/src/constants/colors.dart';
import 'package:sample/src/constants/image_strings.dart';
import 'package:sample/src/constants/text_strings.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        appName,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: cardBgColor),
          child: IconButton(
            icon: Image(
              image: AssetImage(userImage),
              height: 20,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}

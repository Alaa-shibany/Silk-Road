import 'package:flutter/material.dart';

class ListTileAccountWidget extends StatelessWidget {
  const ListTileAccountWidget({
    super.key,
    required this.mediaQuery,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  final Size mediaQuery;
  final Function()? onTap;
  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: mediaQuery.height / 90),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width / 25,
              ),
            ),
            SizedBox(
              width: mediaQuery.width / 60,
            ),
            icon
          ],
        ),
      ),
    );
  }
}

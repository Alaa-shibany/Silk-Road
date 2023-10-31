import 'package:flutter/material.dart';
import 'package:silk_road/styles/app_colors.dart';

class SectorWidget extends StatelessWidget {
  const SectorWidget(
      {super.key,
      required this.mediaQuery,
      required this.icon,
      required this.title,
      required this.margin,
      required this.padding,
      required this.badgeLabel});
  final Size mediaQuery;
  final Widget icon;
  final String title;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final String badgeLabel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: padding,
          margin: margin,
          height: mediaQuery.height / 12,
          width: mediaQuery.width / 7,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.sinkColor, width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Badge(
            label: Text(
              badgeLabel,
              style: TextStyle(
                  color: AppColors.darkPurpulColor,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.amberAccent,
            child: icon,
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

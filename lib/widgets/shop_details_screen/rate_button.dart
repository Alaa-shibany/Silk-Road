import 'package:flutter/material.dart';

import '../../styles/app_colors.dart';

class RateButton extends StatelessWidget {
  const RateButton(
      {super.key,
      required this.mediaQuery,
      this.onPressed,
      required this.isRated});
  final Size mediaQuery;
  final void Function()? onPressed;
  final bool isRated;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: mediaQuery.width / 30),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: isRated
            ? Icon(
                Icons.star_rate_rounded,
                color: Colors.amberAccent,
                size: mediaQuery.height / 35,
              )
            : Icon(
                Icons.star_border_sharp,
                color: AppColors.darkPurpulColor,
                size: mediaQuery.height / 35,
              ),
      ),
    );
  }
}

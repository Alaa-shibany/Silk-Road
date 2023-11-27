import 'package:flutter/material.dart';

class ContainerAccountWidget extends StatelessWidget {
  const ContainerAccountWidget(
      {super.key, required this.child, required this.mediaQuery});
  final Size mediaQuery;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: mediaQuery.width / 40, vertical: mediaQuery.height / 60),
      margin: EdgeInsets.symmetric(horizontal: mediaQuery.width / 20),
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(255, 245, 245, 245),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: child,
    );
  }
}

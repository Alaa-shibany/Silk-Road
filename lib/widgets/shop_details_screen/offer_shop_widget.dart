import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class OfferShopWidget extends StatelessWidget {
  const OfferShopWidget(
      {super.key,
      required this.mediaQuery,
      required this.isLiked,
      required this.offerTitle,
      required this.likes,
      required this.offerImage});
  final Size mediaQuery;
  final bool isLiked;
  final String offerTitle;
  final int likes;
  final String offerImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: mediaQuery.height / 80, horizontal: mediaQuery.width / 100),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: Colors.white,
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(255, 227, 227, 227),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          SizedBox(
            height: mediaQuery.height / 5,
            width: double.infinity,
            child: Image.asset(
              offerImage,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Card(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  offerTitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                trailing: SizedBox(
                  width: mediaQuery.width / 6,
                  child: LikeButton(
                    isLiked: isLiked,
                    likeCount: likes,
                    likeBuilder: (isLike) {
                      if (!isLike) {
                        return const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        );
                      } else {
                        return const Icon(
                          Icons.favorite,
                          color: Colors.amber,
                        );
                      }
                    },
                    countBuilder: (likeCount, isLike, text) {
                      if (!isLike) {
                        return Text(
                          text,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        );
                      } else {
                        return Text(
                          text,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.amber),
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

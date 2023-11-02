import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silk_road/translations/locale_keys.g.dart';
import 'package:silk_road/widgets/shops_screen/transperant.dart';

class ShopWidget extends StatelessWidget {
  const ShopWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.mediaQuery,
    required this.subtitle,
    required this.status,
    required this.shopId,
  });
  final String imageUrl;
  final String title;
  final Size mediaQuery;
  final String subtitle;
  final String status;
  final String shopId;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          margin: const EdgeInsets.all(8),
          clipBehavior: Clip.hardEdge,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Hero(
                tag: shopId,
                child: FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                  height: mediaQuery.height / 5.5,
                  width: double.infinity,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  color: Colors.black54,
                  child: ListTile(
                    trailing: TextButton.icon(
                      onPressed: null,
                      icon: const Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                      label: Text(
                        status,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(
                      title,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      subtitle,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        status == LocaleKeys.closed.tr()
            ? Container(
                margin: const EdgeInsets.all(8),
                height: mediaQuery.height / 5.5,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.black26,
                ),
              )
            : const SizedBox(
                height: 0,
              )
      ],
    );
  }
}

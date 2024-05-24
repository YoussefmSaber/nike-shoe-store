import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/shoe_item.dart';
import '../../theme/colors.dart';
import '../../theme/text_style.dart';

Widget defaultFavProductItem({
  required ShoeItemModel shoeData,
  context,
}) =>
    Card(
      elevation: 4,
      shadowColor: Colors.grey.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      surfaceTintColor: backgroundColor,
      color: backgroundColor,
      child: Stack(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              GoRouter.of(context).pushNamed("details",
                  pathParameters: {"shoeItemId": shoeData.color.id});
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: RepaintBoundary(
                    child: Transform.rotate(
                        angle: -0.35,
                        child: Image.network(shoeData.color.image,
                            width: 120, height: 100))
                        .animate()
                        .fade(duration: 600.ms)
                        .slideY(
                        curve: Curves.easeInOut,
                        duration: 600.ms,
                        begin: -1,
                        end: 0),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                if (shoeData.color.state != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      shoeData.color.state!,
                      style: productStateStyle,
                    ),
                  ),
                SizedBox(height: shoeData.color.state != null ? 0 : 17),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    shoeData.product.name,
                    overflow: TextOverflow.ellipsis,
                    style: productNameStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    shoeData.color.category,
                    style: productCategoryStyle,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "\$${shoeData.color.currentPrice}",
                        textAlign: TextAlign.start,
                        style: productPriceStyle,
                      ),
                      Text(
                          shoeData.color.oldPrice != null
                              ? "\$${shoeData.color.oldPrice}"
                              : "",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: productOldPriceStyle),
                    ],
                  ),
                ),
                const SizedBox(height: 4.0,)
              ],
            ),
          ),
          Positioned(
              top: 12.0, // Adjust this value to position the icon as desired.
              left: 12.0, // Adjust this value to position the icon as desired.
              child: SvgPicture.asset(
                "assets/svgs/not-favorite-small.svg",
                width: 16,
              )),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: primaryColor,
              ),
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
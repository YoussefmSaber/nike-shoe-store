import 'package:flutter/material.dart';
import 'package:nike_shoe_store/config/theme/colors.dart';
import 'package:nike_shoe_store/config/theme/text_style.dart';

Widget defaultProductItem() => Card(
      elevation: 4,
      shadowColor: Colors.grey.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      surfaceTintColor: backgroundColor,
      color: backgroundColor,
      child: IntrinsicHeight(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/shoe-item.png"),
                  const Text(
                    "BEST SELLER",
                    textAlign: TextAlign.start,
                    style: productStateStyle,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    "Nike Jordan",
                    textAlign: TextAlign.start,
                    style: productNameStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "\$302.00",
                    textAlign: TextAlign.start,
                    style: productPriceStyle,
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 12.0, // Adjust this value to position the icon as desired.

              left: 12.0, // Adjust this value to position the icon as desired.

              child: Icon(Icons.favorite),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 50,
                height: 50,
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
      ),
    );

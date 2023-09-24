import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_shoe_store/presentation/theme/theme.dart';

Widget detailsAppBar() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
              color: backgroundColor,
              surfaceTintColor: backgroundColor,
              elevation: 4,
              shadowColor: Colors.grey.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: textColor2,
                ),
              )),
          const Text(
            "Sneaker Shop",
            style: detailsAppBarTextStyle,
          ),
          Card(
              color: backgroundColor,
              surfaceTintColor: backgroundColor,
              elevation: 4,
              shadowColor: Colors.grey.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: primaryColor, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/svgs/cart.svg",
                    width: 24, height: 24, color: textColor2),
              )),
        ]);

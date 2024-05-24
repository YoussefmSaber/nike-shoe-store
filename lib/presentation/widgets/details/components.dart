import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_shoe_store/presentation/theme/theme.dart';

Widget detailsAppBar(context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          circleButton(
              backgroundColor: backgroundColor,
              haveShadow: true,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: textColor2,
              )),
          const Text(
            "Sneaker Shop",
            style: detailsAppBarTextStyle,
          ),
          circleButton(
              backgroundColor: backgroundColor,
              icon: SvgPicture.asset("assets/svgs/cart.svg",
                  width: 24, height: 24, color: textColor2),
              haveShadow: true,
              onPressed: () {})
        ]);

Widget favouriteAppBar(context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      circleButton(
          backgroundColor: backgroundColor,
          haveShadow: true,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: textColor2,
          )),
      const Text(
        "Favourite",
        style: detailsAppBarTextStyle,
      ),
      circleButton(
          backgroundColor: backgroundColor,
          icon: SvgPicture.asset("assets/svgs/favorite.svg",
              width: 24, height: 24, color: textColor2),
          haveShadow: true,
          onPressed: () {})
    ]);

Widget button({
  Function? onPressed,
  required String text,
  required Color color,
  required Color textColor,
  Widget? icon,
}) =>
    FilledButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/svgs/cart.svg",
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          const Text("Add to cart", style: buttonTextStyle),
        ],
      ),
    );

Widget circleButton({
  required Color backgroundColor,
  required Widget icon,
  required bool haveShadow,
  required Function onPressed,
}) =>
    Card(
      color: backgroundColor,
      surfaceTintColor: backgroundColor,
      elevation: haveShadow ? 4 : 0,
      shadowColor:
          haveShadow ? Colors.grey.withOpacity(0.2) : Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: () {
          onPressed();
        },
        child: Padding(padding: const EdgeInsets.all(12.0), child: icon),
      ),
    );

Widget smallProductImage({required String shoeImage}) => Card(
      color: backgroundColor,
      surfaceTintColor: backgroundColor,
      elevation: 4,
      shadowColor: Colors.grey.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 4.0,
          left: 4.0,
          bottom: 4.0,
          right: 12.0,
        ),
        child: Transform.rotate(
          angle: -0.4,
          child: Image.network(
            shoeImage,
            width: 55,
            height: 55,
          ),
        ),
      ),
    );

Widget productImage({
  required String shoeImage,
  required context,
}) =>
    Center(
        child: Padding(
            padding: const EdgeInsets.only(right: 46.0),
            child: Image.network(shoeImage,
                width: MediaQuery.of(context).size.width / 5 * 3,
                loadingBuilder: (context, child, loadingProgress) =>
                    loadingProgress == null
                        ? Transform.rotate(
                            angle: -0.4,
                            child: child.animate().fadeIn(
                                duration: 400.ms, curve: Curves.easeInOut),
                          )
                        : const Center(
                            child: CircularProgressIndicator(),
                          ))));

Widget bottomDetailsMenu({
  required Function circleOnPressed,
  required Function buttonOnPressed,
}) =>
    Padding(
      padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          circleButton(
              backgroundColor: notificationColor,
              icon: SvgPicture.asset("assets/svgs/favorite.svg",
                  width: 24, height: 24, color: textColor2),
              haveShadow: false,
              onPressed: circleOnPressed),
          button(
              color: primaryColor,
              textColor: Colors.white,
              text: "Add to cart",
              onPressed: buttonOnPressed,
              icon: SvgPicture.asset(
                "assets/svgs/cart.svg",
                color: Colors.white,
              )),
        ],
      ),
    );

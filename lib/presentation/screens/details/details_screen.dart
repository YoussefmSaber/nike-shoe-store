import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_shoe_store/presentation/theme/theme.dart';
import 'package:nike_shoe_store/presentation/widgets/components.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.shoeItemId});

  final String shoeItemId;

  @override
  Widget build(BuildContext context) {
    String shoeImage =
        "https://winflhqfsycvddpcpdws.supabase.co/storage/v1/object/public/shoes_images/Mens%20Shoes/Jumpman%20MVP/Jumpman%20MVP%20(4).png?t=2023-09-24T12%3A16%3A50.654";
    String desc =
        "The Nike Blazer Mid’ 77 set fire to the basketball courts in the past. Today, it’s an icon in the sneaker world with its mid-top look and durable design—made for all ballers off the court. This special edition Blazer features printed and stitched details to help your style shine. Can you spot them?";
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor2,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 12, right: 8),
              child: detailsAppBar(context),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 3) * 2,
                    child: const Text(
                      "Nike Air Max 270 Essential",
                      style: detailsProductNameStyle,
                    ),
                  ),
                  const Text(
                    "Men's Shoes",
                    style: detailsProductCategoryStyle,
                  ),
                  const Text(
                    "\$179.33",
                    style: detailsProductPriceStyle,
                  ),
                  SizedBox(height: 30),
                  productImage(context: context, shoeImage: shoeImage),
                  SizedBox(height: 5),
                  SvgPicture.asset(
                    "assets/svgs/slider.svg",
                    width: MediaQuery.of(context).size.width,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) =>
                    smallProductImage(shoeImage: shoeImage),
                separatorBuilder: (_, index) => SizedBox(width: 10),
                itemCount: 10,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ExpandableText(
                desc,
                expandText: "show more",
                collapseText: "show less",
                maxLines: 3,
                style: detailsProductDetailsStyle,
                expandOnTextTap: true,
                collapseOnTextTap: true,
                animationDuration: 400.ms,
                linkColor: primaryColor,
                animationCurve: Curves.easeOut,
                animation: true,
              ),
            ),
          ],
        ),
        bottomNavigationBar:
            bottomDetailsMenu(buttonOnPressed: () {}, circleOnPressed: () {}),
      ),
    );
  }
}

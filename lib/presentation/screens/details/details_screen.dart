import 'package:flutter/material.dart';
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

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor2,
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 12, right: 8),
                child: detailsAppBar()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
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
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 46.0),
                      child: Transform.rotate(
                        angle: -0.4,
                        child: Image.network(
                          shoeImage,
                          width: MediaQuery.of(context).size.width / 5 * 3,
                        ),
                      ),
                    ),
                  ),
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
                itemBuilder: (_, index) => Card(
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
                ),
                separatorBuilder: (_, index) => SizedBox(width: 10),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

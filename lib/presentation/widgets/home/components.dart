import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_shoe_store/data/models/shoe_item.dart';
import 'package:nike_shoe_store/presentation/theme/theme.dart';

// Category Item Component
Widget categoryItem() => Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    elevation: 4,
    shadowColor: Colors.grey.withOpacity(0.2),
    child: const Center(
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "All Shoes",
            style: categoryUnselectedStyle,
          )),
    ));

// Product Item Component
Widget defaultProductItem({
  required ShoeItemModel shoeData,
}) =>
    SizedBox(
      height: 215,
      width: 160,
      child: Card(
        elevation: 4,
        shadowColor: Colors.grey.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        surfaceTintColor: backgroundColor,
        color: backgroundColor,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.rotate(
                      angle: -0.4,
                      child: Image.network(shoeData.color.image,
                          width: 120, height: 110)),
                  if (shoeData.color.state != null)
                    Text(
                      shoeData.color.state!,
                      style: productStateStyle,
                    ),
                  SizedBox(height: shoeData.color.state != null ? 2 : 16),
                  Text(
                    shoeData.product.name,
                    overflow: TextOverflow.ellipsis,
                    style: productNameStyle,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    shoeData.color.category,
                    style: productCategoryStyle,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
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
                          style: productOldPriceStyle),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                top: 12.0, // Adjust this value to position the icon as desired.
                left:
                    12.0, // Adjust this value to position the icon as desired.
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
      ),
    );

Widget appBar() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset("assets/svgs/side-menu.svg"),
          ),
          const Center(child: Text("Explore", style: appBarTextStyle)),
          Card(
              elevation: 4,
              shadowColor: Colors.grey.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              surfaceTintColor: backgroundColor,
              color: backgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  "assets/svgs/notification.svg",
                  width: 24,
                  height: 24,
                ),
              )),
        ]);

Widget saleCard(context) => Padding(
      padding: const EdgeInsets.all(2.0),
      child: Stack(children: [
        // Sale Card
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 4,
            shadowColor: Colors.grey.withOpacity(0.2),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Summer Sale",
                          style: saleStyle,
                        ),
                        Text("15% OFF", style: saleStyle2),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
            top: 15,
            left: 20,
            child: SvgPicture.asset(
              "assets/svgs/spark-effect.svg",
              width: 20,
            )),
        Positioned(
            top: 5,
            left: MediaQuery.of(context).size.width / 2 - 30,
            child: SvgPicture.asset("assets/svgs/spark-effect.svg", width: 30)),
        Positioned(
            bottom: 15,
            right: 20,
            child: SvgPicture.asset(
              "assets/svgs/spark-effect.svg",
              width: 25,
            )),
        Positioned(
            bottom: 15,
            left: MediaQuery.of(context).size.width / 3 + 30,
            child: SvgPicture.asset(
              "assets/svgs/spark-effect.svg",
              width: 20,
            )),
        Positioned(
            top: 25,
            right: MediaQuery.of(context).size.width / 3 - 10,
            child: SvgPicture.asset("assets/svgs/new.svg")),
      ]),
    );

Widget sectionHeader({required String sectionName, Function? toSection}) =>
    Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(sectionName, style: homeSectionStyle),
          const Text("See All", style: homeSectionSeeAllStyle),
        ],
      ),
    );

Widget searchBar() => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 4,
            shadowColor: Colors.grey.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset("assets/svgs/search.svg"),
                ),
                const Text(
                  "Looking for shoes",
                  style: searchBoxStyle,
                )
              ]),
            ),
          ),
        ),
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            elevation: 4,
            surfaceTintColor: primaryColor,
            color: primaryColor,
            shadowColor: Colors.grey.withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: SvgPicture.asset("assets/svgs/filter.svg"),
            )),
      ],
    );

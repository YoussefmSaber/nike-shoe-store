import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_shoe_store/config/theme/colors.dart';
import 'package:nike_shoe_store/config/theme/text_style.dart';
import 'package:nike_shoe_store/widgets/product/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App Bar Section
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset("assets/svgs/side-menu.svg"),
                      ),
                      const Center(
                          child: Text("Explore", style: appBarTextStyle)),
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
                    ]),
                const SizedBox(
                  height: 20,
                ),
                // Search Box Section and Filter Icon
                Row(
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
                ),
                const SizedBox(
                  height: 20,
                ),
                // Category Section
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: const Text("Select Category",
                          style: homeSectionStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child:
                          const Text("See All", style: homeSectionSeeAllStyle),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Category List Section
                Expanded(
                  flex: 1,
                  child: ListView.separated(
                    itemBuilder: (_, index) => Card(
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
                        )),
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Popular Shoes Section
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Popular Shoes", style: homeSectionStyle),
                    const Text("See All", style: homeSectionSeeAllStyle),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Product List Section
                Expanded(
                  flex: 3,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => defaultProductItem(),
                    separatorBuilder: (_, index) => const SizedBox(width: 10),
                    itemCount: 10,
                    physics: const BouncingScrollPhysics(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Popular Shoes Section
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("New Arivals ", style: homeSectionStyle),
                    Text("See All", style: homeSectionSeeAllStyle),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Sale Section
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Padding(
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
                                          SizedBox(
                                            height: 20,
                                          ),
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
                              top: 30,
                              left: 20,
                              child: SvgPicture.asset(
                                "assets/svgs/spark-effect.svg",
                                width: 25,
                              )),
                          Positioned(
                              top: 30,
                              left: MediaQuery.of(context).size.width / 2 - 30,
                              child: SvgPicture.asset(
                                  "assets/svgs/spark-effect.svg",
                                  width: 30)),
                          Positioned(
                              bottom: 30,
                              right: 40,
                              child: SvgPicture.asset(
                                "assets/svgs/spark-effect.svg",
                                width: 25,
                              )),
                          Positioned(
                              bottom: 35,
                              left: MediaQuery.of(context).size.width / 3 + 30,
                              child: SvgPicture.asset(
                                "assets/svgs/spark-effect.svg",
                                width: 20,
                              )),
                          Positioned(
                              top: 25,
                              right: MediaQuery.of(context).size.width / 3 + 20,
                              child: SvgPicture.asset("assets/svgs/new.svg")),
                        ]),
                      ),
                    )),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
            Positioned(
                bottom: 105,
                right: 30,
                child: Image.asset(
                  "assets/images/sale-item.png",
                  width: 150,
                )),
          ]),
        ),
      ),
    );
  }
}

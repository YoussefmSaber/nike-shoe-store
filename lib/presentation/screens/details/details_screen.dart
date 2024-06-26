import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_shoe_store/data/data_sources/supabase_datasource.dart';
import 'package:nike_shoe_store/presentation/theme/theme.dart';
import 'package:nike_shoe_store/presentation/widgets/components.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.shoeItemId});

  final String shoeItemId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor2,
        body: FutureBuilder(
            future: SupabaseApi().getShoe(id: shoeItemId),
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return const Center(child: Text("Error"));
              } else {
                return ListView(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 12, right: 8),
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
                            child: Text(
                              snapshot.data!.product.name,
                              style: detailsProductNameStyle,
                            ),
                          ),
                          Text(
                            snapshot.data!.color.category,
                            style: detailsProductCategoryStyle,
                          ),
                          Text(
                            "\$${snapshot.data!.color.currentPrice}",
                            style: detailsProductPriceStyle,
                          ),
                          const SizedBox(height: 30),
                          productImage(
                              context: context,
                              shoeImage: snapshot.data!.color.image),
                          const SizedBox(height: 5),
                          SvgPicture.asset(
                            "assets/svgs/slider.svg",
                            width: MediaQuery.of(context).size.width,
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) => smallProductImage(
                            shoeImage: snapshot.data!.color.image),
                        separatorBuilder: (_, index) => const SizedBox(width: 10),
                        itemCount: 10,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: ExpandableText(
                        snapshot.data!.product.description,
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
                );
              }
            }),
        bottomNavigationBar:
            bottomDetailsMenu(buttonOnPressed: () {}, circleOnPressed: () {}),
      ),
    );
  }
}

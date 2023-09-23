import 'package:flutter/material.dart';
import 'package:nike_shoe_store/data/data_sources/supabase_datasource.dart';
import 'package:nike_shoe_store/presentation/widgets/home/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App Bar Section
              appBar(),
              const SizedBox(
                height: 20,
              ),
              // Search Box Section and Filter Icon
              searchBar(),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(children: [
                    // Category Section
                    sectionHeader(
                        sectionName: "Select Category", toSection: () {}),
                    // Category List Section
                    SizedBox(
                      height: 60,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (_, index) => categoryItem(),
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 2),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Popular Shoes Section
                    sectionHeader(
                        sectionName: "Popular Shoes", toSection: () {}),
                    // Product List Section
                    FutureBuilder(
                        future: SupabaseApi().getAllShoes(),
                        builder: (_, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (snapshot.hasError) {
                            return Center(
                              child: Text("Error: ${snapshot.error}"),
                            );
                          } else {
                            return SizedBox(
                              height: 215,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (_, index) => defaultProductItem(
                                  shoeData: snapshot.data![index]
                                ),
                                separatorBuilder: (_, index) =>
                                    const SizedBox(width: 10),
                                itemCount: snapshot.data!.length,
                                physics: const BouncingScrollPhysics(),
                              ),
                            );
                          }
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    // New Arrivals Section
                    sectionHeader(
                        sectionName: "New Arrivals", toSection: () {}),
                    // SizedBox(
                    //   height: 215,
                    //   child: ListView.separated(
                    //     scrollDirection: Axis.horizontal,
                    //     itemBuilder: (_, index) => defaultProductItem(),
                    //     separatorBuilder: (_, index) =>
                    //         const SizedBox(width: 10),
                    //     itemCount: 10,
                    //     physics: const BouncingScrollPhysics(),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        saleCard(context),
                        Positioned(
                            top: -1,
                            right: 50,
                            child: Image.asset(
                              "assets/images/sale-item.png",
                              width: 100,
                            ))
                      ],
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

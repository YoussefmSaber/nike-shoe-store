import 'package:flutter/material.dart';
import 'package:nike_shoe_store/presentation/theme/colors.dart';
import 'package:nike_shoe_store/presentation/widgets/components.dart';

import '../../../data/data_sources/supabase_datasource.dart';
import '../../widgets/favourite/component.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor2,
          body: Column(
            children:
            [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 12, right: 8),
              child: favouriteAppBar(context)
            ),
              FutureBuilder(
                  future: SupabaseApi().getSpecialShoes(
                      state: "32541621-3ed6-4054-a54c-344f3bdb4910"),
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
                      return Expanded(child: Padding(
                        padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (_, index)
                          => defaultFavProductItem(
                              shoeData: snapshot.data![index],
                              context: context
                          ),
                          itemCount: snapshot.data!.length,
                          physics: const BouncingScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Adjust number of items per row as needed
                             mainAxisSpacing: 10.0, // Set spacing between rows (optional)
                             crossAxisSpacing: 5.0, // Set spacing between items (optional)
                            // mainAxisExtent: 200,
                            childAspectRatio: 0.98
                          )
                        ),
                      ));
                    }
                  }),
            ]
          )

      ),
    );
  }
}
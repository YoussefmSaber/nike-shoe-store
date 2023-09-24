import 'package:flutter/material.dart';
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              detailsAppBar(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 3) * 2,
                child: const Text("Nike Air Max 270 Essential",
                    style: detailsProductPriceStyle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

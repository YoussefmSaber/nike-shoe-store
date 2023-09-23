import 'package:flutter/material.dart';
import 'package:nike_shoe_store/data/models/model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.shoeItemId});

  final String shoeItemId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(shoeItemId)),
    );
  }
}

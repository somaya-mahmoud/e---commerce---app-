


     import 'package:final_project/presentation/product/widgets/product_details.dart';
import 'package:flutter/material.dart';
  class ProductDetailsScreen extends StatefulWidget {
    const ProductDetailsScreen({Key? key}) : super(key: key);

    @override
    State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
  }

  class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
    @override
    Widget build(BuildContext context) {
      return const Scaffold(
        body: ProductDetailsWidget(),
      );
    }
  }

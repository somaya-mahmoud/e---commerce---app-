
      import 'package:final_project/presentation/product/widgets/product_reviews.dart';
import 'package:flutter/material.dart';
    class ProductReviewsScreen extends StatefulWidget {
      const ProductReviewsScreen({Key? key}) : super(key: key);

      @override
      State<ProductReviewsScreen> createState() => _ProductReviewsScreenState();
    }

    class _ProductReviewsScreenState extends State<ProductReviewsScreen> {
      @override
      Widget build(BuildContext context) {
        return const Scaffold(
          body: ProductReviews(),
        );
      }
    }

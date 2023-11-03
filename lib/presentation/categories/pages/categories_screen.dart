

import 'package:final_project/presentation/categories/widgets/category_widget.dart';
import 'package:flutter/material.dart';
  class CategoriesScreen extends StatefulWidget {
    const CategoriesScreen({Key? key}) : super(key: key);

    @override
    State<CategoriesScreen> createState() => _CategoriesScreenState();
  }

  class _CategoriesScreenState extends State<CategoriesScreen> {
    @override
    Widget build(BuildContext context) {
      return const Scaffold(
        body: CategoriesWidget(),
      );
    }
  }



   import 'package:final_project/presentation/shop_profile/widgets/shop_profile_widget.dart';
   import 'package:flutter/material.dart';
  class ShopProfileScreen extends StatefulWidget {
    const ShopProfileScreen({Key? key}) : super(key: key);

    @override
    State<ShopProfileScreen> createState() => _ShopProfileScreenState();
  }

  class _ShopProfileScreenState extends State<ShopProfileScreen> {
    @override
    Widget build(BuildContext context) {
      return  const Scaffold(
        body: ShopProfileWidget(),
      );
    }
  }

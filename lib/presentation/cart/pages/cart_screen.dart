

    import 'package:final_project/presentation/cart/widgets/cart_widget.dart';
import 'package:flutter/material.dart';
  class CartScreen extends StatefulWidget {
    const CartScreen({Key? key}) : super(key: key);

    @override
    State<CartScreen> createState() => _CartScreenState();
  }

  class _CartScreenState extends State<CartScreen> {
    @override
    Widget build(BuildContext context) {
      return const  Scaffold(
        body: CartWidget(),
      );
    }
  }

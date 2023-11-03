

   import 'package:final_project/presentation/order_placed/widgets/order_placed_widget.dart';
import 'package:flutter/material.dart';
  class OrderPlacedScreen extends StatefulWidget {
    const OrderPlacedScreen({Key? key}) : super(key: key);

    @override
    State<OrderPlacedScreen> createState() => _OrderPlacedScreenState();
  }

  class _OrderPlacedScreenState extends State<OrderPlacedScreen> {
    @override
    Widget build(BuildContext context) {
      return  const Scaffold(
        body: OrderPlacedWidget(),
      );
    }
  }

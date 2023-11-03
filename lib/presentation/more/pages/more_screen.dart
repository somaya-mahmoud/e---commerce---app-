

   import 'package:final_project/presentation/more/widgets/more_widget.dart';
import 'package:flutter/material.dart';
  class MoreScreen extends StatefulWidget {
    const MoreScreen({Key? key}) : super(key: key);

    @override
    State<MoreScreen> createState() => _MoreScreenState();
  }

  class _MoreScreenState extends State<MoreScreen> {
    @override
    Widget build(BuildContext context) {
      return const Scaffold(
        body: MoreWidget(),
      );
    }
  }

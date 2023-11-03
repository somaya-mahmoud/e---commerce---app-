
import 'package:final_project/presentation/get_started/forgot_password/widgets/forget_widget.dart';
import 'package:flutter/material.dart';
  class ForgetPasswordScreen extends StatefulWidget {
    const ForgetPasswordScreen({Key? key}) : super(key: key);

    @override
    State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
  }

  class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
    @override
    Widget build(BuildContext context) {
      return const Scaffold(
        body: ForgetPasswordWidget(),
      );
    }
  }

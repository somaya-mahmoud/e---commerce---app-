

import 'package:final_project/presentation/get_started/sign_up/widgets/sign_up_widget.dart';
import 'package:flutter/material.dart';
  class SignUpScreen extends StatefulWidget {
    const SignUpScreen({Key? key}) : super(key: key);

    @override
    State<SignUpScreen> createState() => _SignUpScreenState();
  }

  class _SignUpScreenState extends State<SignUpScreen> {
    @override
    Widget build(BuildContext context) {
      return const  Scaffold(
       body: SignUpWidget(),
      );
    }
  }

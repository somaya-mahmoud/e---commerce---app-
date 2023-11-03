

import 'package:final_project/presentation/get_started/log_in/login_widgets/login_widget.dart';
import 'package:flutter/material.dart';
   class LoginScreen extends StatefulWidget {
     const LoginScreen({Key? key}) : super(key: key);

     @override
     State<LoginScreen> createState() => _LoginScreenState();
   }

   class _LoginScreenState extends State<LoginScreen> {
     @override
     Widget build(BuildContext context) {
       return const Scaffold(
         body: LoginWidget(),
       );
     }
   }

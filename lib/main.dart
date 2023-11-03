
import 'package:final_project/business_logic/banners_bloc/banners_cubit.dart';
import 'package:final_project/business_logic/login_using_bloc/login_cubit.dart';
import 'package:final_project/business_logic/sign_up_bloc/register_cubit.dart';
import 'package:final_project/data/my_dio.dart';
import 'package:final_project/presentation/get_started/log_in/login_pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await MyDio.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(360, 690),
      // minTextAdapt: true,
      // splitScreenMode: true,
      builder: (context, child) {
      return
       MultiBlocProvider(providers: [
         BlocProvider(create: (context) => RegisterCubit(),),
         BlocProvider(create: (context) => LoginCubit(),),
         BlocProvider(create: (context) => BannersCubit(),),
       ], child:   MaterialApp(
         debugShowCheckedModeBanner: false,
         title: 'Flutter Demo',
         theme: ThemeData(
           primarySwatch: Colors.blue,
         ),
         home: const LoginScreen(),
       ));
      },

    );

  }
}

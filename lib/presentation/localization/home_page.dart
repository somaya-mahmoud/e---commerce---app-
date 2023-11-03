
import 'package:final_project/presentation/localization/next_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
  class HomePage extends StatefulWidget {
    const HomePage({Key? key}) : super(key: key);

    @override
    State<HomePage> createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 100.0.sp,),
              CircleAvatar(
                backgroundImage: const AssetImage('assets/images/picture.webp'),
                radius: 80.0.sp,
              ),
              SizedBox(height: 15.0.h,),
              Text('Somaya Mahmoud',style: TextStyle(
                fontSize: 25.0.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(height: 5.0.h,),
              Text('Flutter Developer',style: TextStyle(
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(height: 5.0.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/linkdin.png',height: 20.0.sp,),
                  SizedBox(width: 5.0.sp,),
                 const Text('linkin.com/12345/somaya-mahmoud',style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
              SizedBox(height: 5.0.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Icon(Icons.email,color: Colors.white,),
                  SizedBox(width: 5.0.sp,),
                 const Text('somayamahmoud30@gmail.com',style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
              SizedBox(height: 150.0.h,),
              FlatButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NextPage(),));
              },
              shape: CircleBorder(
                side: BorderSide(
                  width: 2.0.w,
                  color: Colors.white,
                ),
              ),
                  child: const Icon(Icons.keyboard_arrow_down,color: Colors.white,)),

               Text('Know Me More',style: TextStyle(
                 color: Colors.white,
                 fontSize: 15.0.sp,
               ),),
            ],

          ),
        ),
       backgroundColor: const Color(0xff728def),
      );
    }
  }

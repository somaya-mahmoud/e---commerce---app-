
  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
   class CustomView extends StatelessWidget {
     // const CustomView({Key? key}) : super(key: key);
      final String heading;
      final String title;
      final String subTitle;
      final String description;


     const CustomView(this.heading, this.title, this.subTitle, this.description);

     @override
     Widget build(BuildContext context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(heading,style: const TextStyle(
               color: Colors.white,
             ),),
             SizedBox(height: 15.0.sp,),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 10.0.w),
               height: 80.0.h,
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10.0.sp),
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 SizedBox(height: 15.0.h,),
                   Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
                   SizedBox(height: 5.0.sp,),
                   Text(subTitle),
                   SizedBox(height: 5.0.h,),
                   Text(description),
                 ],
               ),
             ),
           ],
         );


     }
   }



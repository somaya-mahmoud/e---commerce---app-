
   import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
 class MoreWidget extends StatefulWidget {
   const MoreWidget({Key? key}) : super(key: key);

   @override
   State<MoreWidget> createState() => _MoreWidgetState();
 }

 class _MoreWidgetState extends State<MoreWidget> {
   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: SingleChildScrollView(
       child: Column(
       children: [
       Align(
       alignment: Alignment.topLeft,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Stack(
             alignment: Alignment.bottomCenter,
             children:[ Container(
               padding:EdgeInsets.only(top: 1.0.h),
               margin: EdgeInsets.all(15.0.sp),
               width:30.w,
               height: 30.h,
               child: SvgPicture.asset('assets/images/Messages.svg',
                 color: kSecondColor,
                 fit: BoxFit.fitHeight,
               ),
             ),
               CircleAvatar(
                 backgroundColor: Colors.red,
                 radius: 11.0.sp,
               ),
               CircleAvatar(
                 backgroundColor: Colors.red,
                 radius: 10.0.sp,
                 child:  Text(
                   "5",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize:15.0.sp,
                     color: Colors.white,
                   ),
                 ),
               ),
             ],
           ),

           Stack(
             alignment: Alignment.bottomLeft,
             children:[ Container(
               margin: EdgeInsets.all(15.0.sp),
               width:30.w,
               height: 30.h,
               child: SvgPicture.asset('assets/images/notifications.svg',
                 color: kSecondColor,
                 fit: BoxFit.fitHeight,
               ),
             ),
               CircleAvatar(
                 backgroundColor: Colors.red,
                 radius: 11.0.sp,
               ),
               CircleAvatar(
                 backgroundColor: Colors.red,
                 radius: 10.0.sp,
                 child:  Text(
                   "10",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize:14.0.sp,
                     color: Colors.white,
                   ),
                 ),
               ),
             ],

           ),
         ],
       ),
     ),
       Container(
       margin: EdgeInsets.only(right: 210.w),
      child: Text('More',style: TextStyle(
     color: kThirdColor,
     fontSize: 30.sp,
     fontWeight: FontWeight.bold,
     ),),
     ),
         SizedBox(height: 6.0.h,),
         Container(
           margin: EdgeInsets.all(18.0.sp),
           width: double.infinity,
           height: 250,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15.0.sp),
             color: kWhiteColor,
           ),
           child: Column(
             children: [
               Row(
                 children: [
                   Container(
                     margin: EdgeInsets.all(15.0.sp),
                     width:30.w,
                     height: 30.h,
                     child: SvgPicture.asset('assets/images/shipping.svg',
                       color: kSecondColor,
                       fit: BoxFit.fitHeight,
                     ),
                   ),
                   SizedBox(width: 2.0.w,),
                   Text('Shipping Address',style: TextStyle(
                     color: kSecondColor,
                     fontSize: 18.sp,
                     fontWeight: FontWeight.w400,
                   ),),
                   Spacer(),
                   Container(
                     margin: EdgeInsets.all(15.0.sp),
                     width:20.w,
                     height: 20.h,
                     child: SvgPicture.asset('assets/images/more small.svg',
                       color: kSecondColor,
                       fit: BoxFit.fitHeight,
                     ),
                   ),
             ],
           ),
               Container(
                 margin: EdgeInsets.only(top: 3.0.h,left: 20.0.w,right: 20.w),
                 width: double.infinity,
                 height: 1.0.h,
                 color: Colors.grey[200],
               ),
                  Row(
                 children: [
                   Container(
                     margin: EdgeInsets.all(15.0.sp),
                     width:20.w,
                     height: 20.h,
                     child: SvgPicture.asset('assets/images/payment.svg',
                       color: kSecondColor,
                       fit: BoxFit.fitHeight,
                     ),
                   ),
                   SizedBox(width: 2.0.w,),
                   Text('Payment Method',style: TextStyle(
                     color: kSecondColor,
                     fontSize: 18.sp,
                     fontWeight: FontWeight.w400,
                   ),),
                   Spacer(),
                   Container(
                     margin: EdgeInsets.all(15.0.sp),
                     width:20.w,
                     height: 20.h,
                     child: SvgPicture.asset('assets/images/more small.svg',
                       color: kSecondColor,
                       fit: BoxFit.fitHeight,
                     ),
                   ),
         ],
         ),
                  Container(
                 margin: EdgeInsets.only(top: 3.0.h,left: 20.0.w,right: 20.w),
                 width: double.infinity,
                 height: 1.0.h,
                 color: Colors.grey[200],
               ),
                   Row(
                   children: [
                     Row(
                       children: [
                         Container(
                           margin: EdgeInsets.all(15.0.sp),
                           width:20.w,
                           height: 20.h,
                           child: SvgPicture.asset('assets/images/currency.svg',
                             color: kSecondColor,
                             fit: BoxFit.fitHeight,
                           ),
                         ),
                         SizedBox(width: 2.0.w,),
                         Text('Currency',style: TextStyle(
                           color: kSecondColor,
                           fontSize: 18.sp,
                           fontWeight: FontWeight.w400,
                         ),),
                       ],
                     ),
                     Spacer(),
                     Row(
                       children: [
                         Text('USD',style: TextStyle(
                           fontSize: 18.0.sp,
                           fontWeight: FontWeight.w400,
                           color: kSecondColor,
                         ),),
                         SizedBox(width:4.0.w ,),
                         Container(
                           margin: EdgeInsets.only(right: 15.0.sp),
                           width:20.w,
                           height: 20.h,
                           child: SvgPicture.asset('assets/images/more small.svg',
                             color: kSecondColor,
                             fit: BoxFit.fitHeight,
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
               Container(
                 margin: EdgeInsets.only(top: 3.0.h,left: 20.0.w,right: 20.w),
                 width: double.infinity,
                 height: 1.0.h,
                 color: Colors.grey[200],
               ),
               Row(
                 children: [
                   Row(
                     children: [
                       Container(
                         margin: EdgeInsets.all(15.0.sp),
                         width:20.w,
                         height: 20.h,
                         child: SvgPicture.asset('assets/images/language.svg',
                           color: kSecondColor,
                           fit: BoxFit.fitHeight,
                         ),
                       ),
                       SizedBox(width: 2.0.w,),
                       Text('Language',style: TextStyle(
                         color: kSecondColor,
                         fontSize: 18.sp,
                         fontWeight: FontWeight.w400,
                       ),),
                     ],
                   ),
                   Spacer(),
                   Row(
                     children: [
                       Text('English',style: TextStyle(
                         fontSize: 18.0.sp,
                         fontWeight: FontWeight.w400,
                         color: kSecondColor,
                       ),),
                       SizedBox(width:4.0.w ,),
                       Container(
                         margin: EdgeInsets.only(right: 15.0.sp),
                         width:20.w,
                         height: 20.h,
                         child: SvgPicture.asset('assets/images/more small.svg',
                           color: kSecondColor,
                           fit: BoxFit.fitHeight,
                         ),
                       ),
                     ],
                   ),
                 ],
               ),

             ],
           ),

         ),
         Container(
           margin: EdgeInsets.only(top: 2.0.h,left: 18.0.w,right: 18.0.w),
           width: double.infinity,
           height: 260,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15.0.sp),
             color: kWhiteColor,
           ),
           child: Column(
             children: [
               Row(
                 children: [
                   Container(
                     margin: EdgeInsets.all(15.0.sp),
                     width:25.w,
                     height: 25.h,
                     child: SvgPicture.asset('assets/images/notifications-1.svg',
                       color: kSecondColor,
                       fit: BoxFit.fitHeight,
                     ),
                   ),
                   SizedBox(width: 1.0.w,),
                   Text('Notification Settings',style: TextStyle(
                     color: kSecondColor,
                     fontSize: 18.sp,
                     fontWeight: FontWeight.w500,
                   ),),
                   Spacer(),
                   Container(
                     margin: EdgeInsets.all(15.0.sp),
                     width:20.w,
                     height: 20.h,
                     child: SvgPicture.asset('assets/images/more small.svg',
                       color: kSecondColor,
                       fit: BoxFit.fitHeight,
                     ),
                   ),
                 ],
               ),
               Container(
                 margin: EdgeInsets.only(top: 1.0.h,left: 20.0.w,right: 20.w),
                 width: double.infinity,
                 height: 1.0.h,
                 color: Colors.grey[200],
               ),
               Row(
                 children: [
                   Container(
                     margin: EdgeInsets.all(15.0.sp),
                     width:25.w,
                     height: 25.h,
                     child: SvgPicture.asset('assets/images/privacy.svg',
                       color: kSecondColor,
                       fit: BoxFit.fitHeight,
                     ),
                   ),
                   SizedBox(width: 1.0.w,),
                   Text('Privacy Policy',style: TextStyle(
                     color: kSecondColor,
                     fontSize: 18.sp,
                     fontWeight: FontWeight.w500,
                   ),),
                   Spacer(),
                   Container(
                     margin: EdgeInsets.all(15.0.sp),
                     width:20.w,
                     height: 20.h,
                     child: SvgPicture.asset('assets/images/more small.svg',
                       color: kSecondColor,
                       fit: BoxFit.fitHeight,
                     ),
                   ),
                 ],
               ),
               Container(
                 margin: EdgeInsets.only(top: 1.0.h,left: 20.0.w,right: 20.w),
                 width: double.infinity,
                 height: 1.0.h,
                 color: Colors.grey[200],
               ),
               Row(
                 children: [
                   Container(
                     margin: EdgeInsets.all(15.0.sp),
                     width:25.w,
                     height: 25.h,
                     child: SvgPicture.asset('assets/images/faq.svg',
                       color: kSecondColor,
                       fit: BoxFit.fitHeight,
                     ),
                   ),
                   SizedBox(width: 1.0.w,),
                   Text('Frequently Asked Questions',style: TextStyle(
                     color: kSecondColor,
                     fontSize: 16.sp,
                     fontWeight: FontWeight.w500,
                   ),),
                   Spacer(),
                   Container(
                     margin: EdgeInsets.all(15.0.sp),
                     width:20.w,
                     height: 20.h,
                     child: SvgPicture.asset('assets/images/more small.svg',
                       color: kSecondColor,
                       fit: BoxFit.fitHeight,
                     ),
                   ),
                 ],
               ),
               Container(
                 margin: EdgeInsets.only(top: 1.0.h,left: 20.0.w,right: 20.w),
                 width: double.infinity,
                 height: 1.0.h,
                 color: Colors.grey[200],
               ),
               Row(
           children: [
             Container(
               margin: EdgeInsets.all(15.0.sp),
               width:25.w,
               height: 25.h,
               child: SvgPicture.asset('assets/images/legal.svg',
                 color: kSecondColor,
                 fit: BoxFit.fitWidth,
               ),
             ),
             SizedBox(width: 1.0.w,),
             Text('Legal Information',style: TextStyle(
               color: kSecondColor,
               fontSize: 16.sp,
               fontWeight: FontWeight.w500,
             ),),
             Spacer(),
             Container(
               margin: EdgeInsets.all(15.0.sp),
               width:20.w,
               height: 20.h,
               child: SvgPicture.asset('assets/images/more small.svg',
                 color: kSecondColor,
                 fit: BoxFit.fitHeight,
               ),
             ),

           ],

     ),


     ],
         ),
     ),
         SizedBox(height: 15.0.h,),
         TextButton(onPressed: (){}, child: Text('LOG OUT',style:
           TextStyle(
             fontWeight: FontWeight.w400,
             fontSize: 18.0.sp,
             color: kFourthColor,
           ),
           textAlign: TextAlign.center,
         )),
         ],
       ),
       ),

     );

   }
 }

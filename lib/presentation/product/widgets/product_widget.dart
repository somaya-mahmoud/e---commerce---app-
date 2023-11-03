

   import 'package:final_project/presentation/home/pages/home_screen.dart';
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 class ProductWidget extends StatefulWidget {
   const ProductWidget({Key? key}) : super(key: key);

   @override
   State<ProductWidget> createState() => _ProductWidgetState();
 }

 class _ProductWidgetState extends State<ProductWidget> {
   @override
   Widget build(BuildContext context) {
     return SafeArea(child:
     SingleChildScrollView(
       child: Column(
         children: [
           Container(
             margin: EdgeInsets.all(12.0.sp),
             child: Row(
               children: [
                 Container(
                   margin: EdgeInsets.all(18.0.sp),
                   height: 25.0.h,
                   width: 25.0.w,
                   child: InkWell(
                     onTap: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen(),));
                     },
                       child: SvgPicture.asset('assets/images/back-com.svg',fit: BoxFit.fitWidth,color: kFourthColor,)),
                 ),
                 Column(
                   children: [
                     Text('Faux Sued Ankle Boots',style: TextStyle(
                       color: kSecondColor,
                       fontSize: 20.0.sp,
                       fontWeight: FontWeight.w400,
                     ),),
                     Row(
                       children: [
                         Text('\$49.99',style: TextStyle(
                           color: kThirdColor,
                           fontSize: 18.0.sp,
                           fontWeight: FontWeight.w700,
                         ),),
                         SizedBox(width: 2.0.w,),
                         Container(
                           height: 45.0.h,
                           width: 45.0.w,
                           child: SvgPicture.asset('assets/images/rating-7.svg',fit: BoxFit.fitWidth,
                             ),
                         ),
                       ],
                     ),
                   ],
                 ),
                 Spacer(),
                 Stack(
                 alignment: Alignment.centerLeft,
                  children:[ Container(
                       margin: EdgeInsets.all(15.0.sp),
                       width:25.w,
                        height: 25.h,
       child: SvgPicture.asset('assets/images/Cart.svg',
       fit: BoxFit.fitHeight,
       color: kSecondColor,
       ),
       ),
       CircleAvatar(
       backgroundColor: Colors.red,
       radius: 9.0.sp,
       ),
       CircleAvatar(
       backgroundColor: Colors.red,
       radius: 8.0.sp,
       child:  Text(
       "5",
       textAlign: TextAlign.center,
       style: TextStyle(
       fontSize:13.0.sp,
       color: Colors.white,
       ),
       ),
       ),
               ],
             ),

       ],
             ),
           ),
           Center(
             child:
             Container(
                 width: 35.0.w,
                 height: 35.0.h,
                 child: SvgPicture.asset('assets/images/Paging Indicators.svg',fit: BoxFit.fitWidth,)),

           ),
           Container(
             width: double.infinity,
             height: 180.0.h,
             margin: EdgeInsets.all(25.0.sp),
               child: Image.asset('assets/images/ankleboots.png',fit: BoxFit.contain,)),
           Container(
             margin: EdgeInsets.only(left: 30.0.w),
             child: Row(
               children: [
                 Container(
                   padding: EdgeInsets.all(7.0.sp),
                   height:35.0.h,
                   width: 100.0.w,
                   decoration: BoxDecoration(
                     color: kWhiteColor,
                     borderRadius: BorderRadius.circular(20.0.sp),
                   ),
                   child: Text('Product',style: TextStyle(
                     fontWeight: FontWeight.w500,
                     fontSize: 18.0.sp,
                     color: kSecondColor,
                   ),
                   textAlign: TextAlign.center,),
                 ),
                 SizedBox(width: 10.0.w,),
                 Container(
                   padding: EdgeInsets.all(7.0.sp),
                   height:35.0.h,
                   width: 100.0.w,
                   decoration: BoxDecoration(
                     color: kWhiteColor,
                     borderRadius: BorderRadius.circular(20.0.sp),
                   ),
                   child: Text('Details',style: TextStyle(
                     fontWeight: FontWeight.w500,
                     fontSize: 18.0.sp,
                     color: kSecondColor,
                   ),
                   textAlign: TextAlign.center,),
                 ),
                 SizedBox(width: 10.0.w,),
                 Container(
                   padding: EdgeInsets.all(7.0.sp),
                   height:35.0.h,
                   width: 100.0.w,
                   decoration: BoxDecoration(
                     color: kWhiteColor,
                     borderRadius: BorderRadius.circular(20.0.sp),
                   ),
                   child: Text('Review',style: TextStyle(
                     fontWeight: FontWeight.w500,
                     fontSize: 18.0.sp,
                     color: kSecondColor,
                   ),
                   textAlign: TextAlign.center,),
                 ),
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.only(right: 155.0.w,top: 13.0.h),
             child: Text('SELECT COLOR',style: TextStyle(
               fontSize: 20.0.sp,
               fontWeight: FontWeight.w300,
               color: Colors.grey[400],
             ),
             ),
           ),
           Container(
             margin: EdgeInsets.all(16.0.sp),
             child: Row(
             children: [
               CircleAvatar(
             radius: 25.0.sp,
       backgroundColor: kColor1,
       child:Icon(Icons.check,color: kWhiteColor,size: 30.0.sp,),
       ),
               SizedBox(width: 5.0.w,),
               CircleAvatar(
             radius: 25.0.sp,
              backgroundColor: kColor2,
       ),
               SizedBox(width: 5.0.w,),
               CircleAvatar(
             radius: 25.0.sp,
             backgroundColor: kColor3,

       ),
               SizedBox(width: 5.0.w,),
               CircleAvatar(
             radius: 25.0.sp,
             backgroundColor: kColor4,

       ),
               SizedBox(width: 5.0.w,),
               CircleAvatar(
             radius: 25.0.sp,
           backgroundColor: kColor5,

       ),
               SizedBox(width: 4.0.w,),
               CircleAvatar(
             radius: 25.0.sp,
           backgroundColor: kColor6,

       ),

       ],
             ),
           ),
           Container(
             margin: EdgeInsets.only(right: 155.0.w,top: 13.0.h),
             child: Text('SELECT SIZE(US)',style: TextStyle(
               fontSize: 20.0.sp,
               fontWeight: FontWeight.w300,
               color: Colors.grey[400],
             ),
             ),
           ),
           Container(
             margin: EdgeInsets.all(16.0.sp),
             child: Row(
               children: [
                  Container(
                    padding: EdgeInsets.all(12.0.sp),
                    height: 40.0.h,
                    width: 70.0.w,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(15.0.sp),
                    ),
                    child: Text('4.5',style: TextStyle(
                      color: kSecondColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0.sp,
                    ),
                    textAlign: TextAlign.center,),
                  ),
                 SizedBox(width: 8.0.w,),
                 Container(
                   padding: EdgeInsets.all(12.0.sp),
                   height: 40.0.h,
                   width: 70.0.w,
                   decoration: BoxDecoration(
                     color: kWhiteColor,
                     borderRadius: BorderRadius.circular(15.0.sp),
                   ),
                   child: Text('5.0',style: TextStyle(
                     color: kFourthColor,
                     fontWeight: FontWeight.w600,
                     fontSize: 16.0.sp,
                   ),
                     textAlign: TextAlign.center,),
                 ),
                 SizedBox(width: 8.0.w,),
                 Container(
                   padding: EdgeInsets.all(12.0.sp),
                   height: 40.0.h,
                   width: 70.0.w,
                   decoration: BoxDecoration(
                     color: kWhiteColor,
                     borderRadius: BorderRadius.circular(15.0.sp),
                   ),
                   child: Text('6.5',style: TextStyle(
                     color: kSecondColor,
                     fontWeight: FontWeight.w600,
                     fontSize: 16.0.sp,
                   ),
                     textAlign: TextAlign.center,),
                 ),
                 SizedBox(width: 8.0.w,),
                 Container(
                   padding: EdgeInsets.all(12.0.sp),
                   height: 40.0.h,
                   width: 70.0.w,
                   decoration: BoxDecoration(
                     color: kWhiteColor,
                     borderRadius: BorderRadius.circular(15.0.sp),
                   ),
                   child: Text('7.0',style: TextStyle(
                     color: kFourthColor,
                     fontWeight: FontWeight.w600,
                     fontSize: 16.0.sp,
                   ),
                     textAlign: TextAlign.center,),
                 ),
                 SizedBox(width: 6.0.w,),
                 
               ],
             ),
           ),
           SizedBox(height: 10.0.h,),
           Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               SizedBox(
                 width: 185.0.w,
                   child: SvgPicture.asset('assets/images/share this.svg',fit: BoxFit.fitWidth,)),
              Container(
                margin: EdgeInsets.only(top: 10.0.sp),
                height: 40.0.h,
                width: 155.0.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0.sp),
                  color: kFourthColor,
                ),
                child: Row(
                          children: [
                          Container(
                             margin:EdgeInsets.only(left: 18.0.w),
                            child: Text('ADD TO CART',style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: kWhiteColor,
                             fontSize: 15.0.sp,
                             ),
                              textAlign: TextAlign.center,),
                           ),
                         Spacer(),
                           Container(
                            margin: EdgeInsets.only(right: 18.0.w),
                           child: CircleAvatar(
                              radius: 10.0.sp,
                             backgroundColor: kWhiteColor,
                             child: Icon(Icons.chevron_right_rounded,size: 18.0.sp,color: kFourthColor,),
                             ),
                           ),
                         ],

                ),
              ),
              // Container(
              //   margin: EdgeInsets.only(right: 10.0.w),
              //       height: 55.0.h,
              //       width: double.infinity,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(30.0.sp),
              //         color: kFourthColor,
              //       ),
              //      child: Row(
              //         children: [
              //         Container(
              //            margin:EdgeInsets.only(left: 35.0.w),
              //           child: Text('ADD TO CART',style: TextStyle(
              //               fontWeight: FontWeight.w600,
              //               color: kWhiteColor,
              //            fontSize: 18.0.sp,
              //            ),
              //             textAlign: TextAlign.center,),
              //          ),
              //        Spacer(),
              //          Container(
              //           margin: EdgeInsets.only(right: 10.0.w),
              //          child: CircleAvatar(
              //             radius: 18.0.sp,
              //            backgroundColor: kWhiteColor,
              //            child: Icon(Icons.chevron_right_rounded,size: 28.0.sp,color: kFourthColor,),
              //            ),
              //          ),
              //        ],




       ],
           ),
       ],
     ),
     ),
     );
   }
 }

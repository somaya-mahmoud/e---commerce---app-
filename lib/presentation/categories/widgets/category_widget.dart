import 'package:final_project/presentation/home/pages/home_screen.dart';
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ));
                },
                child: Container(
                  margin: EdgeInsets.all(15.0.sp),
                  width: 20.w,
                  height: 20.h,
                  child: SvgPicture.asset(
                    'assets/images/close.svg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0.h, right: 100.w),
              child: Text(
                'All Categories',
                style: TextStyle(
                  color: kThirdColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Column(
            //   children: [
            //     Container(
            //       margin: EdgeInsets.only(right: 220.0.w,top: 18.0.h),
            //       width:115.w,
            //       height: 80.h,
            //       child: SvgPicture.asset('assets/images/Apparel.svg',
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     Container(
            //       height: 30.h,
            //       margin: EdgeInsets.only(right: 220.w,),
            //       child: Text('Apparel',style: TextStyle(
            //           color: kFourthColor,
            //           fontSize: 20.sp,
            //           fontWeight: FontWeight.w500
            //       ),),
            //     ),
            //     Container(
            //       margin: EdgeInsets.only(right: 220.0.w,),
            //       width:115.w,
            //       height: 80.h,
            //       child: SvgPicture.asset('assets/images/Beauty.svg',
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     Container(
            //       height: 30.h,
            //       margin: EdgeInsets.only(right: 220.w),
            //       child: Text('Beauty',style: TextStyle(
            //         color: kSecondColor,
            //         fontSize: 20.sp,
            //         fontWeight: FontWeight.w500,
            //       ),),
            //     ),
            //     Container(
            //       margin: EdgeInsets.only(right: 220.0.w),
            //       width:115.w,
            //       height: 80.h,
            //       child: SvgPicture.asset('assets/images/shoes.svg',
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     Container(
            //       height: 30.h,
            //       margin: EdgeInsets.only(right: 220.w),
            //       child: Text('Shoes',style: TextStyle(
            //           color: kSecondColor,
            //           fontSize: 20.sp,
            //           fontWeight: FontWeight.w500
            //       ),),
            //     ),
            //     Container(
            //       margin: EdgeInsets.only(right: 220.0.w),
            //       width:115.w,
            //       height: 80.h,
            //       child: SvgPicture.asset('assets/images/Electronics.svg',
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     Container(
            //       height: 30.h,
            //       margin: EdgeInsets.only(right: 220.w),
            //       child: Text('Electronics',
            //         textAlign:TextAlign.center,
            //         style: TextStyle(
            //             color: kSecondColor,
            //             fontSize: 20.sp,
            //             fontWeight: FontWeight.w500
            //         ),),
            //     ),
            //     Container(
            //       margin: EdgeInsets.only(right: 220.0.w),
            //       width:115.w,
            //       height: 80.h,
            //       child: SvgPicture.asset('assets/images/Furniture.svg',
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     Container(
            //       height: 30.h,
            //       margin: EdgeInsets.only(right: 220.w),
            //       child: Text('Furniture',style: TextStyle(
            //           color: kSecondColor,
            //           fontSize: 20.sp,
            //           fontWeight: FontWeight.w500
            //       ),),
            //     ),
            //     Container(
            //       margin: EdgeInsets.only(right: 220.0.w),
            //       width:115.w,
            //       height: 80.h,
            //       child: SvgPicture.asset('assets/images/HomeIcon.svg',
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     Container(
            //       height: 30.h,
            //       margin: EdgeInsets.only(right: 220.w),
            //       child: Text('Home',style: TextStyle(
            //           color: kSecondColor,
            //           fontSize: 20.sp,
            //           fontWeight: FontWeight.w500
            //       ),),
            //     ),
            //     Container(
            //       margin: EdgeInsets.only(right: 220.0.w,),
            //       width:115.w,
            //       height: 80.h,
            //       child: SvgPicture.asset('assets/images/Stationary.svg',
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     Container(
            //       height: 30.h,
            //       margin: EdgeInsets.only(right: 220.w),
            //       child: Text('Stationary',style: TextStyle(
            //           color: kSecondColor,
            //           fontSize: 20.sp,
            //           fontWeight: FontWeight.w500
            //       ),),
            //     ),
            //
            //   ],
            // ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 220.0.w, top: 18.0.h),
                      width: 115.w,
                      height: 80.h,
                      child: SvgPicture.asset(
                        'assets/images/Apparel.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 30.h,
                      margin: EdgeInsets.only(
                        right: 220.w,
                      ),
                      child: Text(
                        'Apparel',
                        style: TextStyle(
                            color: kFourthColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: 220.0.w,
                      ),
                      width: 115.w,
                      height: 80.h,
                      child: SvgPicture.asset(
                        'assets/images/Beauty.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 30.h,
                      margin: EdgeInsets.only(right: 220.w),
                      child: Text(
                        'Beauty',
                        style: TextStyle(
                          color: kSecondColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 220.0.w),
                      width: 115.w,
                      height: 80.h,
                      child: SvgPicture.asset(
                        'assets/images/shoes.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 30.h,
                      margin: EdgeInsets.only(right: 220.w),
                      child: Text(
                        'Shoes',
                        style: TextStyle(
                            color: kSecondColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 220.0.w),
                      width: 115.w,
                      height: 80.h,
                      child: SvgPicture.asset(
                        'assets/images/Electronics.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 30.h,
                      margin: EdgeInsets.only(right: 220.w),
                      child: Text(
                        'Electronics',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: kSecondColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 220.0.w),
                      width: 115.w,
                      height: 80.h,
                      child: SvgPicture.asset(
                        'assets/images/Furniture.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 30.h,
                      margin: EdgeInsets.only(right: 220.w),
                      child: Text(
                        'Furniture',
                        style: TextStyle(
                            color: kSecondColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 220.0.w),
                      width: 115.w,
                      height: 80.h,
                      child: SvgPicture.asset(
                        'assets/images/HomeIcon.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 30.h,
                      margin: EdgeInsets.only(right: 220.w),
                      child: Text(
                        'Home',
                        style: TextStyle(
                            color: kSecondColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: 220.0.w,
                      ),
                      width: 115.w,
                      height: 80.h,
                      child: SvgPicture.asset(
                        'assets/images/Stationary.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 30.h,
                      margin: EdgeInsets.only(right: 220.w),
                      child: Text(
                        'Stationary',
                        style: TextStyle(
                            color: kSecondColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// Text('MEN\'S APPAREL',style: TextStyle(
// fontSize: 12.0.sp,
// fontWeight: FontWeight.w300,
// color: kSecondColor,
// ),),

// Container(
// margin: EdgeInsets.only(top: 2.0.h,left: 18.0.w,right: 18.0.w),
// width: double.infinity,
// height: 340,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15.0.sp),
// color: kWhiteColor,
// ),
// child: Column(
// children: [
// Row(
// children: [
//
// Text('T-shirts',style: TextStyle(
// color: kSecondColor,
// fontSize: 18.sp,
// fontWeight: FontWeight.w500,
// ),),
// Spacer(),
// Container(
// margin: EdgeInsets.all(15.0.sp),
// width:20.w,
// height: 20.h,
// child: SvgPicture.asset('assets/images/more small.svg',
// color: kSecondColor,
// fit: BoxFit.fitHeight,
// ),
// ),
// ],
// ),
// Container(
// margin: EdgeInsets.only(top: 1.0.h,left: 20.0.w,right: 20.w),
// width: double.infinity,
// height: 1.0.h,
// color: Colors.grey[200],
// ),
// Row(
// children: [
// Text('Shirts',style: TextStyle(
// color: kSecondColor,
// fontSize: 18.sp,
// fontWeight: FontWeight.w500,
// ),),
// Spacer(),
// Container(
// margin: EdgeInsets.all(15.0.sp),
// width:20.w,
// height: 20.h,
// child: SvgPicture.asset('assets/images/more small.svg',
// color: kSecondColor,
// fit: BoxFit.fitHeight,
// ),
// ),
// ],
// ),
// Container(
// margin: EdgeInsets.only(top: 1.0.h,left: 20.0.w,right: 20.w),
// width: double.infinity,
// height: 1.0.h,
// color: Colors.grey[200],
// ),
// Row(
// children: [
// Text('Pants & Jeans',style: TextStyle(
// color: kSecondColor,
// fontSize: 16.sp,
// fontWeight: FontWeight.w500,
// ),),
// Spacer(),
// Container(
// margin: EdgeInsets.all(15.0.sp),
// width:20.w,
// height: 20.h,
// child: SvgPicture.asset('assets/images/more small.svg',
// color: kSecondColor,
// fit: BoxFit.fitHeight,
// ),
// ),
// ],
// ),
// Container(
// margin: EdgeInsets.only(top: 1.0.h,left: 20.0.w,right: 20.w),
// width: double.infinity,
// height: 1.0.h,
// color: Colors.grey[200],
// ),
// Row(
// children: [
// Text('Socks & Ties',style: TextStyle(
// color: kSecondColor,
// fontSize: 16.sp,
// fontWeight: FontWeight.w500,
// ),),
// Spacer(),
// Container(
// margin: EdgeInsets.all(15.0.sp),
// width:20.w,
// height: 20.h,
// child: SvgPicture.asset('assets/images/more small.svg',
// color: kSecondColor,
// fit: BoxFit.fitHeight,
// ),
// ),
// Container(
// margin: EdgeInsets.only(top: 1.0.h,left: 20.0.w,right: 20.w),
// width: double.infinity,
// height: 1.0.h,
// color: Colors.grey[200],
// ),
// Row(
// children: [
// Text('Underwear',style: TextStyle(
// color: kSecondColor,
// fontSize: 16.sp,
// fontWeight: FontWeight.w500,
// ),),
// Spacer(),
// Container(
// margin: EdgeInsets.all(15.0.sp),
// width:20.w,
// height: 20.h,
// child: SvgPicture.asset('assets/images/more small.svg',
// color: kSecondColor,
// fit: BoxFit.fitHeight,
// ),
// ),
// Container(
// margin: EdgeInsets.only(top: 1.0.h,left: 20.0.w,right: 20.w),
// width: double.infinity,
// height: 1.0.h,
// color: Colors.grey[200],
// ),
// Row(
// children: [
// Text('Jackets',style: TextStyle(
// color: kSecondColor,
// fontSize: 16.sp,
// fontWeight: FontWeight.w500,
// ),),
// Spacer(),
// Container(
// margin: EdgeInsets.all(15.0.sp),
// width:20.w,
// height: 20.h,
// child: SvgPicture.asset('assets/images/more small.svg',
// color: kSecondColor,
// fit: BoxFit.fitHeight,
// ),
// ),
// Container(
// margin: EdgeInsets.only(top: 1.0.h,left: 20.0.w,right: 20.w),
// width: double.infinity,
// height: 1.0.h,
// color: Colors.grey[200],
// ),
// Row(
// children: [
// Text('Coats',style: TextStyle(
// color: kSecondColor,
// fontSize: 16.sp,
// fontWeight: FontWeight.w500,
// ),),
// Spacer(),
// Container(
// margin: EdgeInsets.all(15.0.sp),
// width:20.w,
// height: 20.h,
// child: SvgPicture.asset('assets/images/more small.svg',
// color: kSecondColor,
// fit: BoxFit.fitHeight,
// ),
// ),
// Container(
// margin: EdgeInsets.only(top: 1.0.h,left: 20.0.w,right: 20.w),
// width: double.infinity,
// height: 1.0.h,
// color: Colors.grey[200],
// ),
// Row(
// children: [
// Text('Sweaters',style: TextStyle(
// color: kSecondColor,
// fontSize: 16.sp,
// fontWeight: FontWeight.w500,
// ),),
// Spacer(),
// Container(
// margin: EdgeInsets.all(15.0.sp),
// width:20.w,
// height: 20.h,
// child: SvgPicture.asset('assets/images/more small.svg',
// color: kSecondColor,
// fit: BoxFit.fitHeight,
// ),
// ),
//
// ],
//
// ),
//
// ],
//
//
// ),
// ],
// ),
// ],
// ),
//
// ],
// ),
// ],
// ),
// ),

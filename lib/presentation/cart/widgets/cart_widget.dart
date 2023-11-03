import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
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
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 1.0.h),
                        margin: EdgeInsets.all(15.0.sp),
                        width: 30.w,
                        height: 30.h,
                        child: SvgPicture.asset(
                          'assets/images/Messages.svg',
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
                        child: Text(
                          "5",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.0.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        margin: EdgeInsets.all(15.0.sp),
                        width: 30.w,
                        height: 30.h,
                        child: SvgPicture.asset(
                          'assets/images/notifications.svg',
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
                        child: Text(
                          "10",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0.sp,
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
              child: Text(
                'Cart',
                style: TextStyle(
                  color: kThirdColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 8.0.h,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(15.0.sp),
                  child: CircleAvatar(
                    backgroundColor: kWhiteColor,
                    radius: 70.0.sp,
                    child: Container(
                      padding: EdgeInsets.all(5.0.sp),
                      child: Image.asset(
                        'assets/images/shoes-photo.jpg',
                        fit: BoxFit.fill,
                        width: 116.0.w,
                        height: 80.0.h,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12.0.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Faux Sued Ankle Boots ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0.sp,
                          color: kSecondColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 1.0.h,
                      ),
                      Text(
                        '7.Hot Pink',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0.sp,
                          color: kSecondColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 3.0.h,
                      ),
                      Text(
                        '\$49.99',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0.sp,
                          color: kFourthColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 3.0.h,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 3.0.sp, left: 1.0.w),
                            width: 25.w,
                            height: 25.h,
                            child: SvgPicture.asset(
                              'assets/images/remove small.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 15.0.w,
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0.sp,
                              color: kFourthColor,
                            ),
                          ),
                          SizedBox(
                            width: 15.0.w,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 3.0.sp, left: 1.0.w),
                            width: 25.w,
                            height: 25.h,
                            child: SvgPicture.asset(
                              'assets/images/add small.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 140.0.w, right: 15.0.w),
              width: double.infinity,
              height: 1.0.h,
              color: Colors.grey[200],
            ),
            SizedBox(
              height: 5.0.h,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(15.0.sp),
                  child: CircleAvatar(
                    backgroundColor: kWhiteColor,
                    radius: 70.0.sp,
                    child: Container(
                      padding: EdgeInsets.all(5.0.sp),
                      child: Image.asset(
                        'assets/images/shopping.png',
                        fit: BoxFit.fill,
                        width: 70.0.w,
                        height: 100.0.h,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12.0.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bottle Green BackPack ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0.sp,
                          color: kSecondColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 1.0.h,
                      ),
                      Text(
                        'Medium,Green',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0.sp,
                          color: kSecondColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 3.0.h,
                      ),
                      Text(
                        '\$20.58',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0.sp,
                          color: kFourthColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 3.0.h,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 3.0.sp, left: 1.0.w),
                            width: 25.w,
                            height: 25.h,
                            child: SvgPicture.asset(
                              'assets/images/remove small.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 15.0.w,
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0.sp,
                              color: kFourthColor,
                            ),
                          ),
                          SizedBox(
                            width: 15.0.w,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 3.0.sp, left: 1.0.w),
                            width: 25.w,
                            height: 25.h,
                            child: SvgPicture.asset(
                              'assets/images/add small.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 140.0.w, right: 15.0.w),
              width: double.infinity,
              height: 1.0.h,
              color: Colors.grey[200],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(15.0.sp),
                  child: CircleAvatar(
                    backgroundColor: kWhiteColor,
                    radius: 70.0.sp,
                    child: Container(
                      padding: EdgeInsets.all(5.0.sp),
                      child: Image.asset(
                        'assets/images/scarf.png',
                        fit: BoxFit.fill,
                        width: 116.0.w,
                        height: 80.0.h,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12.0.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Red Cotton Scarf ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0.sp,
                          color: kSecondColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 1.0.h,
                      ),
                      Text(
                        '2ft,Dark Red',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0.sp,
                          color: kSecondColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 3.0.h,
                      ),
                      Text(
                        '\$11.00',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0.sp,
                          color: kFourthColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 3.0.h,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 3.0.sp, left: 1.0.w),
                            width: 25.w,
                            height: 25.h,
                            child: SvgPicture.asset(
                              'assets/images/remove small.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 15.0.w,
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0.sp,
                              color: kFourthColor,
                            ),
                          ),
                          SizedBox(
                            width: 15.0.w,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 3.0.sp, left: 1.0.w),
                            width: 25.w,
                            height: 25.h,
                            child: SvgPicture.asset(
                              'assets/images/add small.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0.w, right: 20.0.w),
              width: double.infinity,
              height: 1.0.h,
              color: Colors.grey[200],
            ),
            SizedBox(
              height: 2.0.h,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0.sp,
                          color: kSecondColor,
                        ),
                      ),
                      SizedBox(
                        height: 1.0.h,
                      ),
                      Text(
                        '\$81.57',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0.sp,
                          color: kSecondColor,
                        ),
                      ),
                      SizedBox(
                        height: 3.0.h,
                      ),
                      Text(
                        'Free Domestic Shipping',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15.0.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.0.w,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0.sp, left: 1.0.w),
                  width: 170.w,
                  height: 100.h,
                  child: SvgPicture.asset(
                    'assets/images/see more.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

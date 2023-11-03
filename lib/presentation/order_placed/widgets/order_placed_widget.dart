import 'package:final_project/presentation/home/pages/home_screen.dart';
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderPlacedWidget extends StatefulWidget {
  const OrderPlacedWidget({Key? key}) : super(key: key);

  @override
  State<OrderPlacedWidget> createState() => _OrderPlacedWidgetState();
}

class _OrderPlacedWidgetState extends State<OrderPlacedWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
          SizedBox(
            height: 80.0.h,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.0.sp,
                  backgroundColor: kWhiteColor,
                  child: Icon(
                    Icons.check,
                    color: kFourthColor,
                    size: 90.0.sp,
                  ),
                ),
                SizedBox(
                  height: 25.0.h,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 28.0.w, right: 28.w, top: 15.0.h),
                  child: Text(
                    'Order Placed!',
                    style: TextStyle(
                      fontSize: 35.0.sp,
                      fontWeight: FontWeight.w400,
                      color: kThirdColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Text(
                  'Your order was placed successfully.\nFor more details,check All My Orders\n'
                  'page under profile tab',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0.sp,
                    fontWeight: FontWeight.w400,
                    color: kSecondColor,
                  ),
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(left: 70.0.w, right: 80.0.w),
                    height: 55.0.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0.sp),
                      color: kFourthColor,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 35.0.w),
                          child: Text(
                            'MY ORDERS',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: kWhiteColor,
                              fontSize: 18.0.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10.0.w),
                          child: CircleAvatar(
                            radius: 18.0.sp,
                            backgroundColor: kWhiteColor,
                            child: Icon(
                              Icons.chevron_right_rounded,
                              size: 28.0.sp,
                              color: kFourthColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

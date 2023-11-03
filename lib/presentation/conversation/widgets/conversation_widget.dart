import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConversationWidget extends StatefulWidget {
  const ConversationWidget({Key? key}) : super(key: key);

  @override
  State<ConversationWidget> createState() => _ConversationWidgetState();
}

class _ConversationWidgetState extends State<ConversationWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white70,
              height: 180.h,
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.all(15.0.sp),
                          height: 20.h,
                          width: 20.w,
                          child: SvgPicture.asset(
                            'assets/images/back-com.svg',
                            fit: BoxFit.cover,
                            color: kFourthColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Smiley\'s Store',
                            style: TextStyle(
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.w500,
                              color: kSecondColor,
                            ),
                          ),
                          Text(
                            'Active',
                            style: TextStyle(
                              fontSize: 13.0.sp,
                              fontWeight: FontWeight.w400,
                              color: kSecondColor,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.all(10.0.sp),
                        child: CircleAvatar(
                          radius: 20.0.sp,
                          backgroundColor: kBackgroundColor,
                          child: Text(
                            'ss',
                            style: TextStyle(
                              color: kSecondColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 14.0.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.0.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30.0.w, right: 30.0.w),
                    width: double.infinity,
                    height: 1.0.h,
                    color: Colors.grey[100],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(15.0.sp),
                        child: CircleAvatar(
                          backgroundColor: kWhiteColor,
                          radius: 45.0.sp,
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
                      SizedBox(
                        width: 5.0.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order:#1084028',
                            style: TextStyle(
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w600,
                              color: kSecondColor,
                            ),
                          ),
                          Text(
                            'Red Cotton Scarf,2ft,Dark Red',
                            style: TextStyle(
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.w400,
                              color: kSecondColor,
                            ),
                          ),
                          Text(
                            '\$11.00',
                            style: TextStyle(
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.w600,
                              color: kFourthColor,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.all(10.0.sp),
                        width: 20.w,
                        height: 20.h,
                        child: SvgPicture.asset(
                          'assets/images/more small.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0.h,
            ),
            Text(
              'Tuesday, 9:20 AM',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 13.0.sp,
                color: kSecondColor,
              ),
            ),
            SizedBox(
              height: 15.0.h,
            ),
            Container(
              margin: EdgeInsets.only(top: 2.0.h, right: 100.w),
              height: 320.h,
              width: 200,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0.sp),
                  topRight: Radius.circular(20.0.sp),
                  bottomRight: Radius.circular(20.0.sp),
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(10.0.sp),
                child: RichText(
                  text: TextSpan(
                    text: 'Dear customer, your\norder has been shipped.'
                        '\nPlease see below for the tracking number.\n \n \n   ',
                    style: TextStyle(
                      fontSize: 13.0.sp,
                      fontWeight: FontWeight.w500,
                      color: kSecondColor,
                    ),
                    children: [
                      TextSpan(
                          text: 'UH2983948935B\n \n',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                            fontSize: 13.0.sp,
                            decoration: TextDecoration.underline,
                          )),
                      TextSpan(
                          text:
                              'Your parcel should arrive between 10-20 days. \n  \n \nif you have any questions please contact us and we will get back to you at our earliest. \n \n \n'
                              'Thank you for choosing our shop!',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0.sp,
                            color: kSecondColor,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: kWhiteColor,
                width: double.infinity,
                height: 60.0.h,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15.0.sp),
                      child: SvgPicture.asset(
                        'assets/images/add.svg',
                      ),
                    ),
                    SizedBox(
                      width: 4.0.w,
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintText: 'Type your message..',
                          //labelText: 'Type your message..',
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.all(15.0.sp),
                      child: SvgPicture.asset('assets/images/send.svg'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

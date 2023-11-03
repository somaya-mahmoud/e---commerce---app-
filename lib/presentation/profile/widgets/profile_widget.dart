
   import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
  class ProfileWidget extends StatefulWidget {
    const ProfileWidget({Key? key}) : super(key: key);

    @override
    State<ProfileWidget> createState() => _ProfileWidgetState();
  }

  class _ProfileWidgetState extends State<ProfileWidget> {
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
              Row(
                children: [
                  CircleAvatar(
                    radius: 70.sp,
                      backgroundColor: kWhiteColor,
                      child: Icon(Icons.person,
                      color: Colors.grey[300],
                      size: 130.sp,),
                  ),
                  SizedBox(width: 8.0.w,),
                  Column(
                    children: [
                      Text('Jane Doe',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kThirdColor,
                        fontSize: 30.0.sp,
                      ),),
                      Text('Janedoe123@email.com',style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: kSecondColor,
                        fontSize: 15.0.sp,
                      ),),
                      Container(
                        margin: EdgeInsets.only(top: 12.0.sp,left: 1.0.w),
                        width:148.w,
                        height: 35.h,
                        child: InkWell(
                          onTap: (){

                          },
                          child: SvgPicture.asset('assets/images/Button.svg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15.0.h,),
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
                          width:27.w,
                          height: 25.h,
                          child: SvgPicture.asset('assets/images/all order.svg',
                            color: kSecondColor,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(width: 1.0.w,),
                        Text('All My Orders',style: TextStyle(
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
                          child: SvgPicture.asset('assets/images/pending shipments.svg',
                            color: kSecondColor,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(width: 1.0.w,),
                        Text('Pending Shipments',style: TextStyle(
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
                          child: SvgPicture.asset('assets/images/pending payment.svg',
                            color: kSecondColor,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(width: 1.0.w,),
                        Text('Pending Payments',style: TextStyle(
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
                          child: SvgPicture.asset('assets/images/finished.svg',
                            color: kSecondColor,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(width: 1.0.w,),
                        Text('Finished Orders',style: TextStyle(
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
                          child: SvgPicture.asset('assets/images/invite.svg',
                            color: kSecondColor,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(width: 1.0.w,),
                        Text('Invite Friends',style: TextStyle(
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
                          child: SvgPicture.asset('assets/images/support.svg',
                            color: kSecondColor,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(width: 1.0.w,),
                        Text('Customer Support',style: TextStyle(
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
                          child: SvgPicture.asset('assets/images/pending payment.svg',
                            color: kSecondColor,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(width: 1.0.w,),
                        Text('Rate Our App',style: TextStyle(
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
                          child: SvgPicture.asset('assets/images/suggest.svg',
                            color: kSecondColor,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(width: 1.0.w,),
                        Text('Make a Suggestion',style: TextStyle(
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

            ],
          ),
        ),
      );
    }
  }

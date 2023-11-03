



import 'package:final_project/business_logic/banners_bloc/banners_cubit.dart';
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

  class HomeWidget extends StatefulWidget {
    const HomeWidget({Key? key}) : super(key: key);

    @override
    State<HomeWidget> createState() => _HomeWidgetState();
  }

  class _HomeWidgetState extends State<HomeWidget> {
  int _selectedIndex = 0;
   late BannersCubit bannersCubit;
    @override
  void initState(){
      super.initState();
      bannersCubit = BlocProvider.of<BannersCubit>(context);
    }

    @override
    Widget build(BuildContext context) {
      return BlocListener<BannersCubit, BannersStates>(
  listener: (context, state) {
    // TODO: implement listener
    
  },
  child: SafeArea(child:
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200.0.h,
                  decoration: const BoxDecoration(
                    color: Colors.white24,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Stack(
                              alignment:Alignment.bottomCenter,
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
                                      fontSize:15.0.sp,
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
                        margin: EdgeInsets.only(right: 150.w),
                        child: Text('Categories',style: TextStyle(
                          color: kThirdColor,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      SizedBox(height: 1.0.h,),
                      SizedBox(
                        height: 50,
                        child:
                        Table(
                          children: [
                            TableRow(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 3.0.sp,left: 1.0.w),
                                  width:115.w,
                                  height: 118.h,
                                  child: SvgPicture.asset('assets/images/Apparel.svg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 3.0.sp,left: 1.0.w),
                                  width:115.w,
                                  height: 118.h,
                                  child: SvgPicture.asset('assets/images/Beauty.svg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 3.0.sp,left: 1.0.w),
                                  width:115.w,
                                  height: 118.h,
                                  child: SvgPicture.asset('assets/images/shoes.svg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 3.0.sp,left: 1.0.w),
                                  width:115.w,
                                  height: 118.h,
                                  child: SvgPicture.asset('assets/images/See All.svg',
                                    fit: BoxFit.cover,

                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text('Apparel',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: kSecondColor,
                                    fontSize: 20.0.sp,
                                  ),),
                                Text('Beauty',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: kSecondColor,
                                    fontSize: 20.0.sp,
                                  ),),
                                Text('Shoes',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: kSecondColor,
                                    fontSize: 20.0.sp,
                                  ),),
                                InkWell(
                                  onTap: (){

                                  },
                                  child: Text('See All',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: kSecondColor,
                                      fontSize: 20.0.sp,
                                    ),),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ),
                    ],
                  ),
                ),
                SizedBox(height: 55.0.sp,),
                Container(
                  margin: EdgeInsets.only(right: 220.w),
                  child: Text('Latest',style: TextStyle(
                    color: kThirdColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
               SizedBox(height: 5.0.h,),
                BlocBuilder<BannersCubit, BannersStates>(
                  buildWhen:(previous,current){
                      return current is BannersSuccessState;
                        },
              builder: (context, state) {

               return Stack(
                  children: [
                      Container(
                        padding: EdgeInsets.all(15.0.sp),
                          child: Image.asset('assets/images/panner.webp')),
                    Container(
                      margin: EdgeInsets.only(left: 35.0.w,top: 140.0.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0.sp),
                      ),
                      width:140.w,
                      height: 90.h,
                      child: InkWell(
                        onTap: (){

                        },
                        child: SvgPicture.asset('assets/images/see more.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],
                );
  },
),
                SizedBox(height: 3.0.h,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0.w,right: 13.0.w,bottom: 20.0.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0.sp),
                        color: kWhiteColor,
                      ),
                      height: 140.0.h,
                      width: 100.0.w,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Container(
                           padding:EdgeInsets.only(top: 20.0.h),
                           child: Image.asset('assets/images/shoes-photo.jpg',
                           width: 60.0.w,
                           fit: BoxFit.fill,
                           height: 80.0.h,),
                         ),
                          SizedBox(height: 2.0.h,),
                          Text('Ankle Boots',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.w500,
                            color: kSecondColor,
                          ),),SizedBox(height: 2.0.h,),
                          Text('\$49.99',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.w900,
                            color: kThirdColor,
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0.sp),
                        color: kWhiteColor,
                      ),
                      height: 140.0.h,
                      width: 100.0.w,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding:EdgeInsets.only(top: 20.0.h),
                            child: Image.asset('assets/images/shopping.png',
                              width: 60.0.w,
                              fit: BoxFit.fill,
                              height: 80.0.h,),
                          ),
                          SizedBox(height: 2.0.h,),
                          Text('Backpack',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.w500,
                              color: kSecondColor,
                            ),),SizedBox(height: 2.0.h,),
                          Text('\$20.58',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.w900,
                              color: kThirdColor,
                            ),),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0.w,bottom: 20.0.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0.sp),
                        color: kWhiteColor,
                      ),
                      height: 140.0.h,
                      width: 100.0.w,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding:EdgeInsets.only(top: 20.0.h),
                            child: Image.asset('assets/images/scarf.png',
                              width: 60.0.w,
                              fit: BoxFit.fill,
                              height: 80.0.h,),
                          ),
                          SizedBox(height: 2.0.h,),
                          Text('Red Scarf',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.w500,
                              color: kSecondColor,
                            ),),SizedBox(height: 2.0.h,),
                          Text('\$11.00',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.w900,
                              color: kThirdColor,
                            ),),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),

      ),
);
    }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  }

  


   import 'package:final_project/presentation/home/pages/home_screen.dart';
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
  class ProductReviews extends StatefulWidget {
    const ProductReviews({Key? key}) : super(key: key);

    @override
    State<ProductReviews> createState() => _ProductReviewsState();
  }

  class _ProductReviewsState extends State<ProductReviews> {
    @override
    Widget build(BuildContext context) {
      return SafeArea(child: SingleChildScrollView(
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
          margin: EdgeInsets.all(12.0.sp),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 35.0.sp,
                backgroundColor:Colors.grey[300],
                child: Text('JD',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kSecondColor,
                  fontSize: 22.0.sp,
                ),),
              ),
              Container(
                margin: EdgeInsets.all(10.0.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/rating-4.svg'),
                        SizedBox(width: 100.0.w,),
                        Text('10 Oct ,2018',style: TextStyle(
                          color: kThirdColor,
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.w300,
                        ),),
                      ],
                    ),
                    SizedBox(height: 2.0.h,),
                    Text('Jane Doe',style: TextStyle(
                      color: kThirdColor,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: 2.0.h,),
                    Text('Lorem ipsum dolor sit amet,\nconsecteture adipiscing elit,sed',style: TextStyle(
                      color: kThirdColor,
                      fontSize: 15.0.sp,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: 3.0.h,),
                    Row(
                      children: [
                        Container(
                            height:50.h,
                            width: 50.0.w,
                            child: Image.asset('assets/images/shoes-photo.jpg',fit: BoxFit.fill,)),
                        SizedBox(width: 3.0.w,),
                        Container(
                            height:50.h,
                            width: 40.0.w,
                            color: kWhiteColor,
                            child: Image.asset('assets/images/ankleboots.png',fit: BoxFit.fill,)),
                        SizedBox(width: 3.0.w,),
                        Container(
                            height:50.h,
                            width: 50.0.w,
                            child: Image.asset('assets/images/shoes-photo.jpg',fit: BoxFit.fill,)),
                        SizedBox(width: 3.0.w,),
                        Container(
                          color: kWhiteColor,
                            height:50.h,
                            width: 40.0.w,
                            child: Image.asset('assets/images/ankleboots.png',fit: BoxFit.fill,)),
                        SizedBox(width: 3.0.w,),
                        Container(
                            height:50.h,
                            width: 50.0.w,
                            child: Image.asset('assets/images/shoes-photo.jpg',fit: BoxFit.fill,)),






                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(12.0.sp),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 35.0.sp,
                backgroundColor:Colors.lightGreen,
                child: Text('SS',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kSecondColor,
                  fontSize: 22.0.sp,
                ),),
              ),
              Container(
                margin: EdgeInsets.all(10.0.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/rating-3.svg'),
                        SizedBox(width: 100.0.w,),
                        Text('7 Sep ,2018',style: TextStyle(
                          color: kThirdColor,
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.w300,
                        ),),
                      ],
                    ),
                    SizedBox(height: 2.0.h,),
                    Text('Sam Smith',style: TextStyle(
                      color: kThirdColor,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: 2.0.h,),
                    Text('Lorem ipsum dolor sit amet,\nconsecteture adipiscing elit,sed',style: TextStyle(
                      color: kThirdColor,
                      fontSize: 15.0.sp,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: 3.0.h,),
                    Row(
                      children: [
                        Container(
                            height:50.h,
                            width: 50.0.w,
                            child: Image.asset('assets/images/shoes-photo.jpg',fit: BoxFit.fill,)),
                        SizedBox(width: 3.0.w,),
                        Container(
                            height:50.h,
                            width: 40.0.w,
                            color: kWhiteColor,
                            child: Image.asset('assets/images/ankleboots.png',fit: BoxFit.fill,)),
                        SizedBox(width: 3.0.w,),
                        Container(
                            height:50.h,
                            width: 50.0.w,
                            child: Image.asset('assets/images/shoes-photo.jpg',fit: BoxFit.fill,)),
                        SizedBox(width: 3.0.w,),
                        Container(
                          color: kWhiteColor,
                            height:50.h,
                            width: 40.0.w,
                            child: Image.asset('assets/images/ankleboots.png',fit: BoxFit.fill,)),
                        SizedBox(width: 3.0.w,),
                        Container(
                            height:50.h,
                            width: 50.0.w,
                            child: Image.asset('assets/images/shoes-photo.jpg',fit: BoxFit.fill,)),






                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.0.h,),
        Container(
          height: 60.0.h,
          child: Row(
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
          ],
          ),
        ),
        ],
      ),
      ),
      );
    }
  }

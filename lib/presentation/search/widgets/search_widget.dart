
   import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
  class SearchWidget extends StatefulWidget {
    const SearchWidget({Key? key}) : super(key: key);

    @override
    State<SearchWidget> createState() => _SearchWidgetState();
  }

  class _SearchWidgetState extends State<SearchWidget> {
    var searchController = TextEditingController();
    @override
    Widget build(BuildContext context) {
      return SafeArea(
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
              child: Text('Search',style: TextStyle(
                color: kThirdColor,
                fontSize: 35.sp,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
              padding: EdgeInsets.only(left: 74.0.w,right: 74.0.w),
              height: 36.0.h,
              margin: EdgeInsets.all(30.0.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0.sp),
                color: Colors.grey[200],
              ),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon:Icon(Icons.search,size: 18.0.sp,color: kSecondColor,),
                  suffixIcon: Container(
                    margin: EdgeInsets.only(top: 10.0.h),
                    child: Text('Search Something',style: TextStyle(
                      fontSize: 15.0.sp,
                      color: kSecondColor,
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                ),

              ),
            ),
            Container(
              height: 15.0.h,
              margin: EdgeInsets.all(13.0.sp),
              child: Row(
                children: [
                  Text('RECENTLY VIEWED',style: TextStyle(
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w300,
                    color: kSecondColor,
                  ),),
                  Spacer(),
                  Text('CLEAR',style: TextStyle(
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w400,
                    color:Colors.red,
                  ),),
                ],
              ),
            ),
            CarouselSlider.builder(
                itemCount:1,
                itemBuilder: (context, index, realIndex) {
                  return  Expanded(
                    child: Row(
                             children: [
                               Container(
                                 margin: EdgeInsets.all(10.0.sp),
                                 height: 100.0.h,
                                 width: 210.0.w,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15.0.sp),
                                   color: kWhiteColor,
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Image.asset('assets/images/scarf.png',
                                       width: 50.0.w,
                                       fit: BoxFit.scaleDown,
                                       height: 60.0.h,),
                                     SizedBox(width: 3.0.w,),
                                     Column(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text('Red Cotton Scarf',style: TextStyle(
                                           fontWeight: FontWeight.w400,
                                           fontSize: 18.0.sp,
                                           color: kThirdColor,
                                         ),),
                                         Text('\$11',style: TextStyle(
                                           fontWeight: FontWeight.w400,
                                           fontSize: 18.0.sp,
                                           color: kThirdColor,
                                         ),),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                               // Container(
                               //   margin: EdgeInsets.all(10.0.sp),
                               //   height: 100.0.h,
                               //   width: 210.0.w,
                               //   decoration: BoxDecoration(
                               //     borderRadius: BorderRadius.circular(15.0.sp),
                               //     color: kWhiteColor,
                               //   ),
                               //   child: Row(
                               //     mainAxisAlignment: MainAxisAlignment.center,
                               //     children: [
                               //       Image.asset('assets/images/shopping.png',
                               //         width: 50.0.w,
                               //         fit: BoxFit.scaleDown,
                               //         height: 60.0.h,),
                               //       SizedBox(width: 3.0.w,),
                               //       Column(
                               //         mainAxisAlignment: MainAxisAlignment.center,
                               //         crossAxisAlignment: CrossAxisAlignment.start,
                               //         children: [
                               //           Text('Bottle Black Backpack',style: TextStyle(
                               //             fontWeight: FontWeight.w400,
                               //             fontSize: 18.0.sp,
                               //             color: kThirdColor,
                               //           ),),
                               //           Text('\$20.58',style: TextStyle(
                               //             fontWeight: FontWeight.w400,
                               //             fontSize: 18.0.sp,
                               //             color: kThirdColor,
                               //           ),),
                               //         ],
                               //       ),
                               //     ],
                               //   ),
                               // ),
                               // Container(
                               //   margin: EdgeInsets.all(10.0.sp),
                               //   height: 100.0.h,
                               //   width: 210.0.w,
                               //   decoration: BoxDecoration(
                               //     borderRadius: BorderRadius.circular(15.0.sp),
                               //     color: kWhiteColor,
                               //   ),
                               //   child: Row(
                               //     mainAxisAlignment: MainAxisAlignment.center,
                               //     children: [
                               //       Image.asset('assets/images/shoes-photo.jpg',
                               //         width: 50.0.w,
                               //         fit: BoxFit.scaleDown,
                               //         height: 60.0.h,),
                               //       SizedBox(width: 3.0.w,),
                               //       Column(
                               //         mainAxisAlignment: MainAxisAlignment.center,
                               //         crossAxisAlignment: CrossAxisAlignment.start,
                               //         children: [
                               //           Text('Ankle Boots',style: TextStyle(
                               //             fontWeight: FontWeight.w400,
                               //             fontSize: 18.0.sp,
                               //             color: kThirdColor,
                               //           ),),
                               //           Text('\$49.99',style: TextStyle(
                               //             fontWeight: FontWeight.w400,
                               //             fontSize: 18.0.sp,
                               //             color: kThirdColor,
                               //           ),),
                               //         ],
                               //       ),
                               //     ],
                               //   ),
                               // ),
                             ],

                    ),
                  );
                },
                options: CarouselOptions(
                  height: 110,
                  autoPlay: true,
                  reverse: true,
                  autoPlayInterval:  const Duration(seconds: 2),
                  viewportFraction:1,
                )),
            Container(
              height: 15.0.h,
              margin: EdgeInsets.all(13.0.sp),
              child: Row(
                children: [
                  Text('RECOMMENDED',style: TextStyle(
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w300,
                    color: kSecondColor,
                  ),),
                  Spacer(),
                  Text('REFRESH',style: TextStyle(
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w400,
                    color:Colors.red,
                  ),),
                ],
              ),
            ),
             Container(
               padding: EdgeInsets.only(right: 318.0.sp),
               margin: EdgeInsets.all(20.0.sp),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       Container(
                         padding: EdgeInsets.all(8.0.sp),
                         height: 35.0.h,
                         width: 110.0.w,
                         decoration: BoxDecoration(
                           color: kWhiteColor,
                           borderRadius: BorderRadius.circular(8.0.sp),
                         ),
                         child: Text('Denim Jeans',style: TextStyle(
                           fontSize: 15.0.sp,
                           fontWeight: FontWeight.w400,
                           color: kSecondColor,
                         ),
                           textAlign: TextAlign.center,
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(left: 4.0.w),
                         padding: EdgeInsets.all(10.0.sp),
                         height: 35.0.h,
                         width: 90.0.w,
                         decoration: BoxDecoration(
                           color: kWhiteColor,
                           borderRadius: BorderRadius.circular(8.0.sp),
                         ),
                         child: Text('Mini Skirt',style: TextStyle(
                           fontSize: 15.0.sp,
                           fontWeight: FontWeight.w400,
                           color: kSecondColor,
                         ),
                           textAlign: TextAlign.center,
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(left: 4.0.w),
                         padding: EdgeInsets.all(10.0.sp),
                         height: 35.0.h,
                         width: 65.0.w,
                         decoration: BoxDecoration(
                           color: kWhiteColor,
                           borderRadius: BorderRadius.circular(8.0.sp),
                         ),
                         child: Text('Jacket',style: TextStyle(
                           fontSize: 15.0.sp,
                           fontWeight: FontWeight.w400,
                           color: kSecondColor,
                         ),
                           textAlign: TextAlign.center,
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(left: 4.0.w),
                         padding: EdgeInsets.all(10.0.sp),
                         height: 35.0.h,
                         width: 110.0.w,
                         decoration: BoxDecoration(
                           color: kWhiteColor,
                           borderRadius: BorderRadius.circular(8.0.sp),
                         ),
                         child: ListView(
                           scrollDirection: Axis.horizontal,
                           children:[ Text('Accessories',style: TextStyle(
                             fontSize: 13.0.sp,
                             fontWeight: FontWeight.w400,
                             color: kSecondColor,
                           ),
                             textAlign: TextAlign.start,
                           ),
                         ],
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 10.0.h,),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Container(
                         padding: EdgeInsets.all(8.0.sp),
                         width: 140.0.w,
                         height: 35.0.h,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0.sp),
                           color: kWhiteColor,
                         ),
                         child: Text('Sports Accessories',style: TextStyle(
                           color: kSecondColor,
                           fontWeight: FontWeight.w400,
                           fontSize: 14.0.sp,
                         ),),
                       ),
                       Container(
                         margin: EdgeInsets.only(left: 4.0.w),
                         padding: EdgeInsets.all(8.0.sp),
                         width: 95.0.w,
                         height: 35.0.h,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0.sp),
                           color: kWhiteColor,
                         ),
                         child: Text('Yoga Pants',style: TextStyle(
                           color: kSecondColor,
                           fontWeight: FontWeight.w400,
                           fontSize: 14.0.sp,
                         ),),
                       ),
                       Container(
                           margin: EdgeInsets.only(left: 3.0.w),
                           padding: EdgeInsets.all(8.0.sp),
                           width: 120.0.w,
                           height: 30.0.h,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.0.sp),
                             color: kWhiteColor,
                           ),
                           child: ListView(
                             scrollDirection: Axis.horizontal,
                             children:[ Text('Eye Shadow',style: TextStyle(
                               color: kSecondColor,
                               fontWeight: FontWeight.w400,
                               fontSize: 13.0.sp,
                             ),),
                         ],
                           ),
                         ),


                     ],
                   ),
                 ],
               ),
             ),

             // Row(
             //   children: [
             //     Container(
             //       margin: EdgeInsets.all(10.0.sp),
             //       height: 100.0.h,
             //       width: 210.0.w,
             //       decoration: BoxDecoration(
             //         borderRadius: BorderRadius.circular(15.0.sp),
             //         color: kWhiteColor,
             //       ),
             //       child: Row(
             //         mainAxisAlignment: MainAxisAlignment.center,
             //         children: [
             //           Image.asset('assets/images/scarf.png',
             //             width: 50.0.w,
             //             fit: BoxFit.scaleDown,
             //             height: 60.0.h,),
             //           SizedBox(width: 3.0.w,),
             //           Column(
             //             mainAxisAlignment: MainAxisAlignment.center,
             //             crossAxisAlignment: CrossAxisAlignment.start,
             //             children: [
             //               Text('Red Cotton Scarf',style: TextStyle(
             //                 fontWeight: FontWeight.w400,
             //                 fontSize: 18.0.sp,
             //                 color: kThirdColor,
             //               ),),
             //               Text('\$11',style: TextStyle(
             //                 fontWeight: FontWeight.w400,
             //                 fontSize: 18.0.sp,
             //                 color: kThirdColor,
             //               ),),
             //             ],
             //           ),
             //         ],
             //       ),
             //     ),
             //     Container(
             //       margin: EdgeInsets.all(10.0.sp),
             //       height: 100.0.h,
             //       width: 210.0.w,
             //       decoration: BoxDecoration(
             //         borderRadius: BorderRadius.circular(15.0.sp),
             //         color: kWhiteColor,
             //       ),
             //       child: Row(
             //         mainAxisAlignment: MainAxisAlignment.center,
             //         children: [
             //           Image.asset('assets/images/shopping.png',
             //             width: 50.0.w,
             //             fit: BoxFit.scaleDown,
             //             height: 60.0.h,),
             //           SizedBox(width: 3.0.w,),
             //           Column(
             //             mainAxisAlignment: MainAxisAlignment.center,
             //             crossAxisAlignment: CrossAxisAlignment.start,
             //             children: [
             //               Text('Bottle Black Backpack',style: TextStyle(
             //                 fontWeight: FontWeight.w400,
             //                 fontSize: 18.0.sp,
             //                 color: kThirdColor,
             //               ),),
             //               Text('\$20.58',style: TextStyle(
             //                 fontWeight: FontWeight.w400,
             //                 fontSize: 18.0.sp,
             //                 color: kThirdColor,
             //               ),),
             //             ],
             //           ),
             //         ],
             //       ),
             //     ),
             //     Container(
             //       margin: EdgeInsets.all(10.0.sp),
             //       height: 100.0.h,
             //       width: 210.0.w,
             //       decoration: BoxDecoration(
             //         borderRadius: BorderRadius.circular(15.0.sp),
             //         color: kWhiteColor,
             //       ),
             //       child: Row(
             //         mainAxisAlignment: MainAxisAlignment.center,
             //         children: [
             //           Image.asset('assets/images/shoes-photo.jpg',
             //             width: 50.0.w,
             //             fit: BoxFit.scaleDown,
             //             height: 60.0.h,),
             //           SizedBox(width: 3.0.w,),
             //           Column(
             //             mainAxisAlignment: MainAxisAlignment.center,
             //             crossAxisAlignment: CrossAxisAlignment.start,
             //             children: [
             //               Text('Ankle Boots',style: TextStyle(
             //                 fontWeight: FontWeight.w400,
             //                 fontSize: 18.0.sp,
             //                 color: kThirdColor,
             //               ),),
             //               Text('\$49.99',style: TextStyle(
             //                 fontWeight: FontWeight.w400,
             //                 fontSize: 18.0.sp,
             //                 color: kThirdColor,
             //               ),),
             //             ],
             //           ),
             //         ],
             //       ),
             //     ),
             //   ],
             // ),

          ],
        ),
      );
    }
  }

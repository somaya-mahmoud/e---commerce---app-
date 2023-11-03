
import 'package:final_project/presentation/conversation/pages/conversation_screen.dart';
import 'package:final_project/presentation/home/pages/home_screen.dart';
import 'package:final_project/presentation/product/pages/product_details_screen.dart';
import 'package:final_project/presentation/product/pages/product_reviews_screen.dart';
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 class ShopProfileWidget extends StatefulWidget {
   const ShopProfileWidget({Key? key}) : super(key: key);

   @override
   State<ShopProfileWidget> createState() => _ShopProfileWidgetState();
 }

 class _ShopProfileWidgetState extends State<ShopProfileWidget> with TickerProviderStateMixin{
   TabController? tabController;
   List<Widget> screens = [
     const HomeScreen(),
     const ConversationScreen(),
     const ProductReviewsScreen(),
   ];
   @override
   void initState() {
     super.initState();
     tabController =  TabController(length: 3, vsync: this);
   }

   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Column(
         children: [
           Stack(
             alignment: Alignment.topRight,
             children: [
               Image.asset('assets/images/shop_banner.jpg'),
               Container(
                 padding: EdgeInsets.all(12.0.sp),
                   child: Icon(Icons.search,size: 30.sp,color: kFourthColor,)),
             ],
           ),
           Container(
             color: kWhiteColor,
             child: DefaultTabController(
               initialIndex: 0,
                 length: 3,
                 child: TabBar(
                   controller: tabController,
                   indicatorColor: Colors.red,
                     unselectedLabelColor:kThirdColor,
                     labelColor: kFourthColor,
                     tabs: [
                   Tab(
                     child: Text('Home',style: TextStyle(
                       fontSize: 18.0.sp,
                     ),),
                   ),
                   Tab(
                     child: Text('Messages',style: TextStyle(

                       fontSize: 18.0.sp,
                     ),),
                   ),
                   Tab(
                     child: Text('Reviews',style: TextStyle(
                       fontSize: 18.0.sp,
                     ),),
                   ),
                            ],
                 ),
             ),
           ),
           Expanded(
             child: TabBarView(
               controller: tabController,
                 children: screens),
           ),
         ],
       ),
     );
   }
 }



import 'package:final_project/presentation/cart/pages/cart_screen.dart';
import 'package:final_project/presentation/home/pages/home_screen.dart';
import 'package:final_project/presentation/more/pages/more_screen.dart';
import 'package:final_project/presentation/profile/pages/profile_screen.dart';
import 'package:final_project/presentation/search/pages/search_screen.dart';
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
 class MainScreen extends StatefulWidget {
   const MainScreen({Key? key}) : super(key: key);

   @override
   State<MainScreen> createState() => _MainScreenState();
 }

 class _MainScreenState extends State<MainScreen> {
   int _selectedIndex = 0;
   List<Widget> screens = [
     const HomeScreen(),
     const SearchScreen(),
     const CartScreen(),
     const ProfileScreen(),
     const MoreScreen(),
   ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       // appBar: AppBar(
       //   title: Text('Main Screen'),
       // ),
       //
       bottomNavigationBar: BottomNavigationBar(
         items: [
           BottomNavigationBarItem(
           icon:  Container(
               margin: EdgeInsets.all(15.0.sp),
               width:20.w,
               height: 20.h,
               child: SvgPicture.asset('assets/images/iconHome.svg',
                 fit: BoxFit.fitHeight,
                 color:kThirdColor,
               ),
             ),
             label:'Home',
           ),
           BottomNavigationBarItem(
            icon: Container(
               margin: EdgeInsets.all(15.0.sp),
               width:20.w,
               height: 20.h,
               child: SvgPicture.asset('assets/images/Search.svg',
                 fit: BoxFit.fitHeight,
                 color: kSecondColor,
               ),
             ),
             label:'Search',
           ),
           BottomNavigationBarItem(
            icon: Stack(
              alignment: Alignment.centerLeft,
              children:[ Container(
                 margin: EdgeInsets.all(15.0.sp),
                 width:20.w,
                 height: 20.h,
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
             label:'Cart',
           ),
           BottomNavigationBarItem(
           icon:  Container(
               margin: EdgeInsets.all(15.0.sp),
               width:20.w,
               height: 20.h,
               child: SvgPicture.asset('assets/images/person.svg',
                 fit: BoxFit.fitHeight,
                 color: kThirdColor,
               ),
             ),
             label:'Profile',
           ),
           BottomNavigationBarItem(
           icon:  Container(
               margin: EdgeInsets.all(15.0.sp),
               width:20.w,
               height:20.h,
               child: SvgPicture.asset('assets/images/more.svg',
                 fit: BoxFit.fitHeight,
                 color: kSecondColor,
               ),
             ),
             label:'More',
           ),
         ],
         type: BottomNavigationBarType.fixed,
         currentIndex: _selectedIndex,
         selectedItemColor:kFourthColor,
         unselectedItemColor:kSecondColor,
         backgroundColor: kWhiteColor,
         onTap: _onItemTapped,
       ),
       body: screens[_selectedIndex],

     );
   }
   void _onItemTapped(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }
 }

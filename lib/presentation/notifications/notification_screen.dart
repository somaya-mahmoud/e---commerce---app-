

   import 'package:final_project/presentation/home/pages/home_screen.dart';
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
  class Notifications extends StatefulWidget {
    const Notifications({Key? key}) : super(key: key);

    @override
    State<Notifications> createState() => _NotificationsState();
  }

  class _NotificationsState extends State<Notifications> {
    int _selectedIndex = 0;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen(),));
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0.sp),
                      width:20.w,
                      height: 20.h,
                      child: SvgPicture.asset('assets/images/close.svg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:15.0.h,right: 130.w),
                  child: Text('Notifications',style: TextStyle(
                    color: kThirdColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Container(
                  margin: EdgeInsets.all(10.0.sp),
                  child: Row(
                    children: [
                      Container(
                        height: 95.0.h,
                        width: 95.0.w,
                        child: SvgPicture.asset('assets/images/Icon.svg',fit: BoxFit.fill,),
                      ),
                      RichText(text: TextSpan(
                        text: 'Smiley\'s Store marked your\norder ',style: TextStyle(
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w400,
                        color: kSecondColor,
                      ),
                        children: [
                          TextSpan(text: '#1982984',style: TextStyle(
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.w400,
                            color:Colors.red,
                          ),),TextSpan(text: ' as shipped.',style: TextStyle(
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.w500,
                            color:kSecondColor,
                          ),),
                        ],
                      ),

                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('9:20 AM',style: TextStyle(
                            color: kSecondColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0.sp,
                          ),),
                          SizedBox(height: 9.0.h,),
                          CircleAvatar(
                            radius: 5.0.sp,
                            backgroundColor: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 75.0.w,right: 25.0.w),
                  width: double.infinity,
                  height: 1.0.h,
                  color: Colors.grey[200],
                ),
                Container(
                  margin: EdgeInsets.all(10.0.sp),
                  child: Row(
                    children: [
                      Container(
                        height: 95.0.h,
                        width: 95.0.w,
                        child: SvgPicture.asset('assets/images/Icon-1.svg',fit: BoxFit.fill,),
                      ),
                      RichText(text: TextSpan(
                        text: 'Package from your order\n',style: TextStyle(
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w400,
                        color: kSecondColor,
                      ),
                        children: [
                          TextSpan(text: '#1982984 ',style: TextStyle(
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.w400,
                            color:Colors.red,
                          ),),TextSpan(text: 'has arrived to\ndestination country',style: TextStyle(
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.w400,
                            color:kSecondColor,
                          ),),
                        ],
                      ),

                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Yesterday',style: TextStyle(
                            color: kSecondColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0.sp,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 75.0.w,right: 25.0.w),
                  width: double.infinity,
                  height: 1.0.h,
                  color: Colors.grey[200],
                ),
                Container(
                  margin: EdgeInsets.all(10.0.sp),
                  child: Row(
                    children: [
                      Container(
                        height: 95.0.h,
                        width: 95.0.w,
                        child: SvgPicture.asset('assets/images/Icon-2.svg',fit: BoxFit.fill,),
                      ),
                      Text('50% OFF of everything at ',style: TextStyle(
                        fontSize: 17.0.sp,
                        fontWeight: FontWeight.w400,
                        color: kSecondColor,
                      ),),

                      Spacer(),
                      Text('15 Oct',style: TextStyle(
                        color: kSecondColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0.sp,
                      ),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 75.0.w,right: 25.0.w),
                  width: double.infinity,
                  height: 1.0.h,
                  color: Colors.grey[200],
                ),
                Container(
                  margin: EdgeInsets.all(10.0.sp),
                  child: Row(
                    children: [
                      Container(
                        height: 95.0.h,
                        width: 95.0.w,
                        child: SvgPicture.asset('assets/images/Icon-3.svg',fit: BoxFit.fill,),
                      ),
                      RichText(text: TextSpan(
                        text: 'BOGO sale starting\n',style: TextStyle(
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w400,
                        color: kSecondColor,
                      ),
                        children: [
                          TextSpan(text: 'tomorrow',style: TextStyle(
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.w400,
                            color:Colors.red,
                          ),),TextSpan(text: ' Don\'t forgot to\ncheck it out for great deals!',style: TextStyle(
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.w400,
                            color:kSecondColor,
                          ),),
                        ],
                      ),

                      ),
                      Spacer(),
                      Text('20 Sep',style: TextStyle(
                        color: kSecondColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0.sp,
                      ),),

                    ],
                  ),
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

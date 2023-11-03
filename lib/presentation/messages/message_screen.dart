
    import 'package:final_project/presentation/home/pages/home_screen.dart';
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
  class Messages extends StatefulWidget {
    const Messages({Key? key}) : super(key: key);

    @override
    State<Messages> createState() => _MessagesState();
  }

  class _MessagesState extends State<Messages> {
    var searchController = TextEditingController();
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
                  child: Text('Messages',style: TextStyle(
                    color: kThirdColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                SizedBox(height: 1.0.h,),
                Container(
                  padding: EdgeInsets.only(left: 59.0.w,right: 59.0.w),
                  height: 32.0.h,
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
                         margin: EdgeInsets.only(top: 7.0.h),
                         child: Text('Search Conversations',style: TextStyle(
                                  fontSize: 15.0.sp,
                                 color: kSecondColor,
                                 fontWeight: FontWeight.w400,
                                 ),),
                       ),
                     ),

                  ),
                ),
                SizedBox(height: 2.0.h,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0.sp),
                      child: CircleAvatar(
                        radius: 30.0.sp,
                        backgroundColor:kBackgroundColor,
                        child: Text('SS',style: TextStyle(
                          color: kSecondColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 22.0.sp,
                        ),),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Smiley\'s Store',style: TextStyle(
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w500,
                          color: kSecondColor,
                        ),),
                        Text('Lorem ipsum dolor sit amet,\nconsecteture adipiscing elit',
                          style: TextStyle(
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.w400,
                            color: kSecondColor,
                          ),),
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.all(10.0.sp),
                      child: Column(
                        children: [
                          Text('9:20 AM',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0.sp,
                            color: kSecondColor,
                          ),),
                          SizedBox(height: 9.0.h,),
                          Stack(
                            children: [
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
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.0.h,),
                Container(
                  margin: EdgeInsets.only(left: 25.0.w,right: 25.0.w),
                  width: double.infinity,
                  height: 1.0.h,
                  color: Colors.grey[200],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0.sp),
                      child: CircleAvatar(
                        radius: 30.0.sp,
                        backgroundColor:kCircleBackgroundColor,
                        child: Text('BS',style: TextStyle(
                          color: kCircleOneColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 22.0.sp,
                        ),),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Beauty Supplies Store',style: TextStyle(
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w500,
                          color: kSecondColor,
                        ),),
                        Text('Ut enim ad minim veniam,quis \nnostrud exercitation ullamco..',
                          style: TextStyle(
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.w400,
                            color: kSecondColor,
                          ),),
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.all(10.0.sp),
                      child: Column(
                        children: [
                          Text('8:12 AM',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0.sp,
                            color: kSecondColor,
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 25.0.w,right: 25.0.w),
                  width: double.infinity,
                  height: 1.0.h,
                  color: Colors.grey[200],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0.sp),
                      child: CircleAvatar(
                        radius: 30.0.sp,
                        backgroundColor:kCircleTwoColor,
                        child: Text('LB',style: TextStyle(
                          color: Colors.deepPurple[600],
                          fontWeight: FontWeight.w500,
                          fontSize: 22.0.sp,
                        ),),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('LoveLee Bees',style: TextStyle(
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w500,
                          color: kSecondColor,
                        ),),
                        Text('Ut enim ad minim veniam,quis \nnostrud exercitation ullamco..',
                          style: TextStyle(
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.w400,
                            color: kSecondColor,
                          ),),
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.all(10.0.sp),
                      child: Column(
                        children: [
                          Text('Yesterday',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0.sp,
                            color: kSecondColor,
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 25.0.w,right: 25.0.w),
                  width: double.infinity,
                  height: 1.0.h,
                  color: Colors.grey[200],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0.sp),
                      child: CircleAvatar(
                        radius: 30.0.sp,
                        backgroundColor:kCircle3BackgroundColor,
                        child: Text('FB',style: TextStyle(
                          color:kCircleThreeColor ,
                          fontWeight: FontWeight.w500,
                          fontSize: 22.0.sp,
                        ),),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('FSHN Boutique',style: TextStyle(
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w500,
                          color: kSecondColor,
                        ),),
                        Text('Ut enim ad minim veniam,quis \nnostrud exercitation ullamco..',
                          style: TextStyle(
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.w400,
                            color: kSecondColor,
                          ),),
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.all(10.0.sp),
                      child: Column(
                        children: [
                          Text('15 Sep',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0.sp,
                            color: kSecondColor,
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 25.0.w,right: 25.0.w),
                  width: double.infinity,
                  height: 1.0.h,
                  color: Colors.grey[200],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0.sp),
                      child: CircleAvatar(
                        radius: 30.0.sp,
                        backgroundColor:kCircle4BackgroundColor,
                        child: Text('AC',style: TextStyle(
                          color:kCircleFourColor ,
                          fontWeight: FontWeight.w500,
                          fontSize: 22.0.sp,
                        ),),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Anna\'s Corner',style: TextStyle(
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w500,
                          color: kSecondColor,
                        ),),
                        Text('Ut enim ad minim veniam,quis \nnostrud exercitation ullamco..',
                          style: TextStyle(
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.w400,
                            color: kSecondColor,
                          ),),
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.all(10.0.sp),
                      child: Column(
                        children: [
                          Text('11 Aug',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0.sp,
                            color: kSecondColor,
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

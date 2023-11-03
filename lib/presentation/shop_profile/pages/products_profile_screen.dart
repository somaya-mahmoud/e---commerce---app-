import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ShopProductsScreen extends StatefulWidget {
  const ShopProductsScreen({Key? key}) : super(key: key);

  @override
  State<ShopProductsScreen> createState() => _ShopProductsScreenState();
}

class _ShopProductsScreenState extends State<ShopProductsScreen> {
  bool isSelected = false;

  var searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      key: _scaffoldKey,
      endDrawer: Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: 125.0.h),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: const Color(0xff764abc)),
                accountName: Text(
                  "Somaya Mahmoud",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "somayamahmoud@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: FlutterLogo(),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('Page 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.train,
                ),
                title: const Text('Page 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 90.0.h,
            width: double.infinity,
            margin: EdgeInsets.only(left: 1.0.w, right: 1.0.w),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0.sp),
                  height: 20.h,
                  width: 20.w,
                  child: SvgPicture.asset(
                    'assets/images/back-com.svg',
                    fit: BoxFit.cover,
                    color: kFourthColor,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 36.0.h,
                    margin: EdgeInsets.all(0.5.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0.sp),
                      color: Colors.grey[200],
                    ),
                    child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 18.0.sp,
                          color: kSecondColor,
                        ),
                        suffixIcon: Container(
                          padding: EdgeInsets.only(right: 170.0.w),
                          margin: EdgeInsets.only(top: 10.0.h),
                          child: Text(
                            'Search',
                            style: TextStyle(
                              fontSize: 15.0.sp,
                              color: kSecondColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Builder(
                  builder: (context) => Container(
                    margin: EdgeInsets.all(10.0.sp),
                    height: 20.h,
                    width: 20.w,
                    child: InkWell(
                      onTap: () {
                        _scaffoldKey.currentState!.openEndDrawer();
                        if (_scaffoldKey.currentState!.isEndDrawerOpen) {
                          setState(() {
                            isSelected = true;
                          });
                           }
                     else {
                          setState((){
                            isSelected != isSelected ;
                          });
                        }
                      },
                      child: SvgPicture.asset(
                        'assets/images/filter-1.svg',
                        fit: BoxFit.cover,
                        color: (isSelected== true) ? kFourthColor : kSecondColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

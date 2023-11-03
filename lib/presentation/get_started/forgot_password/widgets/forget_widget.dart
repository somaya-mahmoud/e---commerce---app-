
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
  class ForgetPasswordWidget extends StatefulWidget {
    const ForgetPasswordWidget({Key? key}) : super(key: key);

    @override
    State<ForgetPasswordWidget> createState() => _ForgetPasswordWidgetState();
  }

  class _ForgetPasswordWidgetState extends State<ForgetPasswordWidget> {
    var emailController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    @override
    Widget build(BuildContext context) {
      return Form(
        key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 74.h,left: 35.w),
                  width: 498.w,
                  height: 40.h,
                  child: Text('Forgot Password',style: TextStyle(
                    color: kThirdColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                SizedBox(height: 10.0.h,),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(left: 55.0.w,right: 55.0.w),
                    child: RichText(
                      text: TextSpan(
                        text: 'Enter the email address you used to create your account and we will email you'
                            ' a link to \n ',
                        style: TextStyle(
                          color: kSecondColor,
                          fontSize: 13.0.sp,
                        ),
                          children: const [
                  TextSpan(
                           text: '              reset your password ',
                          style: TextStyle(
                            color: kSecondColor,
                                 ),
                                  ),

                                  ],
                                  ),

                                      ),

                  ),
                ),
                SizedBox(height: 25.0.h,),
                Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15.0.sp)),
      color: kWhiteColor,
      ),
      margin: EdgeInsets.only(left: 18.w,right: 18.w,top: 15.0.h),
      width: 325.w,
      height: 70.h,
      child:
         Column(
        children: [
        Row(
        children: [
        Container(
        margin: EdgeInsets.all(15.0.sp),
        width:20.w,
        height: 20.h,
        child: SvgPicture.asset('assets/images/email.svg',
        color: kSecondColor,
        fit: BoxFit.fitHeight,
        ),
        ),
        SizedBox(width: 5.w,),
        Expanded(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
        padding:  EdgeInsets.only(top: 7.0.h),
        child: Text('EMAIL',style: TextStyle(
        fontWeight: FontWeight.w300,
        color: kSecondColor,
        fontSize: 18.sp,
        ),),
        ),
        TextFormField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        // validator: (value){
        // if(value!.isEmpty){
        // return "Required";
        // }else{
        // return null;
        // }
        // },
        decoration: InputDecoration(
        // focusedBorder: InputBorder.none,
        // enabledBorder: InputBorder.none,
        // errorBorder: InputBorder.none,
        // disabledBorder: InputBorder.none,
        border: InputBorder.none,
        hintText: 'janedoe123@email.com',
        hintStyle: TextStyle(
        color: kThirdColor,
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        ),
        ),),
        ],
        ),
        ),
        ],

        ),




        ],
        ),
      ),


                SizedBox(height: 1.0.h,),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(left: 16.w,right: 16.w,top: 15.h),
                    width: double.infinity,
                    height: 70.h,
                    child: SvgPicture.asset('assets/images/ctabutton.svg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  onTap: (){
                    if(formKey.currentState!.validate()){
                      debugPrint('Required');
                    }
                  },
                ),
      ],
            ),
          ),
      );
    }
  }

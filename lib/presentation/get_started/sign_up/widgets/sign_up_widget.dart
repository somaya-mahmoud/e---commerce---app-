import 'package:final_project/business_logic/sign_up_bloc/register_cubit.dart';
import 'package:final_project/presentation/get_started/log_in/login_pages/login_page.dart';
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
    late RegisterCubit registerCubit;
   @override
  void initState()
   {
     super.initState();
     registerCubit = BlocProvider.of<RegisterCubit>(context);

   }  @override
  Widget build(BuildContext context) {
    return
      BlocListener<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          // TODO: implement listener
          if(state is RegisterSuccessState){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen(),));
          // }else if (state is RegisterFailureState){
          //   ScaffoldMessenger.of(context).showSnackBar( SnackBar(content:
          //   Text('Invalid Email Or Password',style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 20.0.sp,
          //   ),)));

          }
        },
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 74.h, left: 73.w),
                  width: 498.w,
                  height: 40.h,
                  child: Text('Sign Up', style: TextStyle(
                    color: kThirdColor,
                    fontSize: 37.sp,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0.sp)),
                    color: kWhiteColor,
                  ),
                  margin: EdgeInsets.only(left: 18.w, right: 18.w, top: 15.0.h),
                  width: 325.w,
                  height: 220.h,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15.0.sp),
                            width: 20.w,
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
                                  padding: EdgeInsets.only(top: 7.0.h),
                                  child: Text('EMAIL', style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: kSecondColor,
                                    fontSize: 18.sp,
                                  ),),
                                ),
                                TextFormField(
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  // validator: (value){
                                  //   if(value!.isEmpty){
                                  //     return "Required";
                                  //   }else{
                                  //     return null;
                                  //                     }
                                  //                   },
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
                      SizedBox(height: 1.0.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.all(15.0.sp),
                            width: 25.w,
                            height: 25.h,
                            child: SvgPicture.asset('assets/images/person.svg',
                              color: kSecondColor,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          SizedBox(width: 2.w,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('USERNAME', style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: kSecondColor,
                                  fontSize: 18.sp,
                                ),),
                                TextFormField(
                                  controller: nameController,
                                  keyboardType: TextInputType.name,
                                  // validator: (value){
                                  //   if(value!.isEmpty){
                                  //     return "Required";
                                  //   }else{
                                  //     return null;
                                  //   }
                                  // },
                                  decoration: InputDecoration(
                                    // focusedBorder: InputBorder.none,
                                    // enabledBorder: InputBorder.none,
                                    // errorBorder: InputBorder.none,
                                    // disabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    hintText: 'janedoe12345',
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
                      SizedBox(height: 1.0.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.all(15.0.sp),
                            width: 25.w,
                            height: 25.h,
                            child: SvgPicture.asset(
                              'assets/images/password.svg',
                              color: kSecondColor,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          SizedBox(width: 2.w,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('PASSWORD', style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: kSecondColor,
                                  fontSize: 18.sp,
                                ),),
                                TextFormField(
                                  controller: passwordController,
                                  keyboardType: TextInputType.visiblePassword,
                                  // validator: (value){
                                  //   if(value!.isEmpty){
                                  //     return "Required";
                                  //   }else{
                                  //     return null;
                                  //   }
                                  // },
                                  decoration: InputDecoration(
                                    // focusedBorder: InputBorder.none,
                                    // enabledBorder: InputBorder.none,
                                    // errorBorder: InputBorder.none,
                                    // disabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    hintText: '********************',
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
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 15.h),
                    width: double.infinity,
                    height: 70.h,
                    child: SvgPicture.asset('assets/images/ctabutton.svg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                     // debugPrint('Required');
                      registerCubit.register(
                        email: emailController.text,
                        userName: nameController.text,
                        password: passwordController.text,
                      );
                    }
                  },
                ),
                SizedBox(height: 10.0.h,),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(left: 55.0.w, right: 55.0.w),
                    child: RichText(
                      text: TextSpan(
                        text: 'By creating an account, you agree to our\n ',
                        style: TextStyle(
                          color: kSecondColor,
                          fontSize: 12.0.sp,
                        ),
                        children: const [
                          TextSpan(
                            text: '  Terms of Service ',
                            style: TextStyle(
                              color: kFourthColor,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: TextStyle(
                              color: kSecondColor,
                            ),
                          ),
                          TextSpan(
                            text: ' Privacy Policy',
                            style: TextStyle(

                              color: kFourthColor,
                            ),
                          ),

                        ],
                      ),

                    ),

                  ),
                ),


              ],
            ),
          ),
        ),
      );
  }

}

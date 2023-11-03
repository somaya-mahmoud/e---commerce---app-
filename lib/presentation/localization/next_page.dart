


import 'package:final_project/presentation/localization/custom_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
  class NextPage extends StatefulWidget {
    const NextPage({Key? key}) : super(key: key);

    @override
    State<NextPage> createState() => _NextPageState();
  }

  class _NextPageState extends State<NextPage> {
    List languages = ['English','French','Arabic'];
    String language = 'English';
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 5.0.h,),
               const CustomView('Professional History', 'River Tech', 'Intern', 'worked on small feature'),
               SizedBox(height: 15.0.h,),
               const CustomView('Educational History', 'Harvard University', 'Nov-2016/Dec-2021', 'Specialized on computer science'),
               SizedBox(height: 20.0.h,),
               Text('Skills',style: TextStyle(
                 color: Colors.white,
               ),),
              SizedBox(height: 15.0.h,),
              Container(
                 padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                 height: 80.0.h,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10.0.sp),
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 15.0.h,),
                    const Text('Java,Python,Flutter,Dart,SQFLite',style: TextStyle(fontWeight: FontWeight.bold),),
                   ],
                 ),
               ),
               SizedBox(height: 15.0.h,),
               const CustomView('Awards and Achievements', 'World Largest Hackathon', 'winner', 'specialized on health care'),
               SizedBox(height: 40.0.h,),
              Center(
                child: FlatButton(
                  color: Colors.white,
                    onPressed: (){}, child: const Text('Hire me!',style: TextStyle(
                  color:  Color(0xff728def)
                ),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0.sp),
                  ),
                ),
              ),
          ]
        ),
            )),
        appBar: AppBar(
          backgroundColor: const Color(0xff728def),
          elevation: 0,
         actions: [
           DropdownButton<dynamic>(
             dropdownColor: Colors.deepPurpleAccent[100],
             underline: const SizedBox(),
             value: language,
             onChanged: (value){
               setState((){
                 language = value;
               });
             },
             items:
               [
                 DropdownMenuItem(child: Text('English',style: const TextStyle(color: Colors.white),),value: 'English',),
                 DropdownMenuItem(child: Text('French',style: const TextStyle(color: Colors.white),),value: 'French',),
                 DropdownMenuItem(child: Text('Arabic',style: const TextStyle(color: Colors.white),),value: 'Arabic',),
               ],
               // languages.map((value) {
               //   value = value;
               //   return DropdownMenuItem(child:Text(value,style: const TextStyle(
               //   color:Colors.white,
               //   )), );
               // }).toList(),

           ),
         ],
        ),
        backgroundColor: const Color(0xff728def),
      );
    }
  }

import 'package:bloc/bloc.dart';
import 'package:final_project/data/models/RegisterResponse.dart';
import 'package:final_project/data/my_dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterStates> {

  RegisterCubit() : super(RegisterInitialState());


    late RegisterResponse registerResponse;

     void register({String? email,String? userName,String? password}){
       MyDio.postData(
         endPoint: 'register',
         data: {
           'email': email,
           'name': userName,
           'password': password
         }
       ).then((value) {
         registerResponse = RegisterResponse.fromJson(value.data);
         if(registerResponse.status!){
         debugPrint('status is : ${registerResponse.status}');
         debugPrint('data is : ${registerResponse.data}');
         emit(RegisterSuccessState());
         }
         else{
           emit(RegisterFailureState('error_message is: ${registerResponse.message}'));
         }
       }

        );
     }

}

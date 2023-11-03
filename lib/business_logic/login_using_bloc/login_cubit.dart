import 'package:bloc/bloc.dart';
import 'package:final_project/data/models/LoginResponse.dart';
import 'package:final_project/data/my_dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

   late LoginResponse loginResponse;

   void login({String? email,String? password}){
     MyDio.postData(
       endPoint: 'login',
       queryParameters: {
         'email': email,
         'password': password
       }
     ).then((value)async {
       loginResponse = LoginResponse.fromJson(value.data);
       if(loginResponse.status!){
         SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
         sharedPreferences.setString('token',loginResponse.data!.token!);
         print('status is : ${loginResponse.status}');
         print('token is: ${loginResponse.data!.token}');
         print('email is: ${loginResponse.data!.email}');
         emit(LoginSuccessState());
       }
     });
   }
}

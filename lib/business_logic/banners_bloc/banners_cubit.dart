import 'package:bloc/bloc.dart';
import 'package:final_project/data/models/BannersResponse.dart';
import 'package:final_project/data/my_dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'banners_state.dart';

class BannersCubit extends Cubit<BannersStates> {
  BannersCubit() : super(BannersInitialState());

  late BannersResponse bannersResponse;
  var bannersList = [];
   void getBanners(){
     MyDio.getData(
       endPoint: 'banners',
     ).then((value) {
       bannersResponse = BannersResponse.fromJson(value.data);
       bannersList = bannersResponse.data!;
       if(bannersResponse.status!){
         print('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
        debugPrint('status is : ${bannersResponse.status}');
        debugPrint('length is : ${bannersResponse.data!.length}');
        debugPrint('image is : ${bannersResponse.data![0].image}');
        emit(BannersSuccessState());
       }
     });
   }
}

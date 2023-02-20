import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean/core/usecase/usecases.dart';
import 'package:flutter_clean/features/home/data/model/home_model.dart';
import 'package:flutter_clean/features/home/domain/usecase/home_data_usecase.dart';
// import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {

  final HomeDataUsecase homeDataUsecase;
  HomeCubit({required this.homeDataUsecase}) : super(HomeInitial());


  Future<void> getHomeData() async{

    try{
      emit(HomeLoading());
      var result = await homeDataUsecase.call(NoParams());
      result.fold((failure) async {
        emit(HomeError( "error occured"));
      }, (result) async {
        emit(HomeLoaded(result));
      });

    }on Exception{
      emit(HomeError("error occured"));
    }
  }
}

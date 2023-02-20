import 'package:bloc/bloc.dart';
import 'package:flutter_clean/features/splash/data/splash_model.dart';
import 'package:flutter_clean/features/splash/domain/splash_usecase.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final SplashUseCase useCase;
  SplashCubit(this.useCase) : super(SplashInitial());

  Future<void> getSplashData() async{

    try{
      emit(SplashLoading());
      SplashModel result = await useCase.getSplashData();
      emit(SplashLoaded(result));

    }on Exception{
      emit(SplashError("error occured"));
    }

  }
}

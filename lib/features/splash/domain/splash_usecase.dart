import 'package:flutter_clean/features/splash/domain/splash_repository.dart';

class SplashUseCase {

  final SplashRepository _splashRepository;
  SplashUseCase(this._splashRepository);

  Future<dynamic> getSplashData() async{
    return _splashRepository.getSplashData();
  }

}
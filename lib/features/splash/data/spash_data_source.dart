import 'package:flutter_clean/features/splash/data/splash_model.dart';

abstract class SplashDataSource{
  Future<dynamic> getSplashData();
}

class ISplashDataSource extends SplashDataSource {

  @override
  Future<dynamic> getSplashData() async{
    await Future.delayed(const Duration(seconds: 3));

    SplashModel model = SplashModel(1 ,1 ,"splash title1" ,true);
    return model;
  }

}
import 'package:flutter_clean/features/splash/data/spash_data_source.dart';
import 'package:flutter_clean/features/splash/data/splash_model.dart';
import 'package:flutter_clean/features/splash/domain/splash_repository.dart';

class SplashRepositoryImpl extends SplashRepository {
  final SplashDataSource splashDataSource;

  SplashRepositoryImpl(this.splashDataSource);

  @override
  Future<dynamic> getSplashData() async {
    SplashModel model = await splashDataSource.getSplashData();
    return model;
  }
}

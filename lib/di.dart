import 'package:flutter_clean/features/home/data/data_source/home_data_source.dart';
import 'package:flutter_clean/features/home/data/repository/home_repository_impl.dart';
import 'package:flutter_clean/features/home/domain/usecase/home_data_usecase.dart';
import 'package:flutter_clean/features/home/presentation/bloc/home_cubit.dart';
import 'package:flutter_clean/features/splash/data/spash_data_source.dart';
import 'package:flutter_clean/features/splash/data/splash_repoditory_impl.dart';
import 'package:flutter_clean/features/splash/domain/splash_repository.dart';
import 'package:flutter_clean/features/splash/domain/splash_usecase.dart';
import 'package:get_it/get_it.dart';

import 'features/home/domain/repository/home_data_repository.dart';
import 'features/splash/presentation/bloc/splash_cubit.dart';


final sl = GetIt.instance;
void setUp(){
 // home
 sl.registerFactory<HomeDataSource>(() => IHomeRepository());
 sl.registerFactory<HomeRepository>(() => HomeRepositoryImpl(sl()));
 sl.registerFactory<HomeDataUsecase>(() => HomeDataUsecase(sl()));
 sl.registerFactory<HomeCubit>(() => HomeCubit(homeDataUsecase: sl()));

 //splash
 sl.registerFactory<SplashDataSource>(() => ISplashDataSource());
 sl.registerFactory<SplashRepository>(() => SplashRepositoryImpl(sl()));
 sl.registerFactory<SplashUseCase>(() => SplashUseCase(sl()));
 sl.registerFactory<SplashCubit>(() => SplashCubit(sl()));


}
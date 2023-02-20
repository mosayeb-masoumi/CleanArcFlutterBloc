
import 'package:dartz/dartz.dart';
import 'package:flutter_clean/core/error/failures.dart';
import 'package:flutter_clean/features/home/data/data_source/home_data_source.dart';
import 'package:flutter_clean/features/home/data/model/home_model.dart';
import 'package:flutter_clean/features/home/domain/repository/home_data_repository.dart';

class HomeRepositoryImpl extends HomeRepository{

  final HomeDataSource dataSource;
  HomeRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure?, dynamic>> getHomeData() async{
    try {
      HomeModel model = await dataSource.getHomeData();
      return Right(model);
    }
    catch(e){
      return Left(null);
    }

  }


  // @override
  // Future<Either<Failure?, void>> getDataPublisherSplash() async{
  //   try {
  //     await dataSource.getDataPublisherSplash();
  //     return Right("");
  //   }
  //   catch(e){
  //     return Left(null);
  //   }
  //
  // }


  // Future<dynamic> getHomeData() async{
  //
  //   try{
  //      var result = await homeDataSource.getHomeData();
  //      return Right(result);
  //   }on Exception{
  //      return Left(null);
  //   }
  //
  // }

}
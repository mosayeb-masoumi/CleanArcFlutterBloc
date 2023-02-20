
import 'package:dartz/dartz.dart';
import 'package:flutter_clean/core/error/failures.dart';
import 'package:flutter_clean/core/usecase/usecases.dart';
import 'package:flutter_clean/features/home/domain/repository/home_data_repository.dart';

class HomeDataUsecase extends UseCase<dynamic, NoParams> {

  final HomeRepository _homeRepository;

  HomeDataUsecase(this._homeRepository);


  @override
  Future<Either<Failure?, dynamic>> call(Params) {
    return _homeRepository.getHomeData();
  }




}
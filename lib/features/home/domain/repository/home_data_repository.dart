import 'package:dartz/dartz.dart';
import 'package:flutter_clean/core/error/failures.dart';
import 'package:flutter_clean/features/home/data/model/home_model.dart';

abstract class HomeRepository{

  Future<Either<Failure?,  dynamic>> getHomeData();
}
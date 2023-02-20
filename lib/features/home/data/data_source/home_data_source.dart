import 'package:dio/dio.dart';
import 'package:flutter_clean/core/network.dart';
import 'package:flutter_clean/features/home/data/model/home_model.dart';

abstract class HomeDataSource{

  Future<dynamic> getHomeData();
  Future<dynamic> getVersions(int id);
}

class IHomeRepository extends HomeDataSource{


  @override
  Future<dynamic> getHomeData() async{

    await Future.delayed(Duration(seconds: 3));

    HomeModel model = HomeModel(1 ,1 ,"title1" ,true);
    return model;

    // var dio = DioUtil.getInstance();
    // String apiUrl = ("https://jsonplaceholder.typicode.com/todos/1");
    //
    // try {
    //   Response response = await dio!.get(apiUrl);
    //
    //   if (response.statusCode == 204 || response.statusCode == 200) {
    //     var map = Map<String, dynamic>.from(response.data);
    //     try{
    //
    //       HomeModel model = HomeModel.fromJson(map);
    //       return model;
    //     }catch(e){
    //       return "error";
    //     }
    //
    //   } else {
    //     return "error";
    //   }
    // } on DioError catch (e) {
    //   if (e.response?.statusCode == 500 || e.response?.statusCode == 502) {
    //     return "error";
    //   } else {
    //     return "error";
    //   }
    // }
  }




  @override
  Future getVersions(int id) {
    // TODO: implement getVersions
    throw UnimplementedError();
  }




}
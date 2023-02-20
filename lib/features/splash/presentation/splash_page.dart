
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean/features/splash/presentation/bloc/splash_cubit.dart';

import 'package:flutter_clean/di.dart' as di;

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:Container(
        width: size.width,
        height: size.height,

        child: BlocProvider<SplashCubit>(
          create: (_) => di.sl(),
          child: BlocConsumer<SplashCubit , SplashState>(
            listener: (context , state){
               if(state is SplashLoading){
                 var a = 5;
               }else if(state is SplashLoaded){
                 var a = 5;
               }
            },
            builder: (context , state){
              if(state is SplashLoading){
                return Center(child: CircularProgressIndicator(color: Colors.red,),);
              } else if(state is SplashLoaded){
                return Center(child: Text(state.splashModel.title),);
              } else if(state is SplashError){
                return Center(child: Text("error"),);
              }else{
                // means StudentListInitial
                final cubit = BlocProvider.of<SplashCubit>(context);
                cubit.getSplashData();
                return Container();
                // return getDataWiget(context);
              }
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean/features/home/presentation/bloc/home_cubit.dart';


import 'package:flutter_clean/di.dart' as di;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            BlocProvider<HomeCubit>(
              create: (_) => di.sl(),
              // create: (context) => HomeCubit(homeDataUsecase: HomeDataUsecase()),
              child: BlocConsumer<HomeCubit, HomeState>(
                listener: (context, state) {
                  if(state is HomeLoading){
                    var a = 5;
                  }else if(state is HomeLoaded){
                    var a = 5;
                  }
                },
                builder: (context, state) {

                  if(state is HomeLoading){
                    return Center(child: CircularProgressIndicator(color: Colors.red,),);
                  } else if(state is HomeLoaded){
                    return Center(child: Text(state.homeModel.title),);
                  } else if(state is HomeError){
                    return Center(child: Text("error"),);
                  }else{
                    // means StudentListInitial
                    final cubit = BlocProvider.of<HomeCubit>(context);
                    cubit.getHomeData();
                    return Container();
                    // return getDataWiget(context);
                  }


                },
              ),

            )
          ],
        ),
      ),
    );
  }
}

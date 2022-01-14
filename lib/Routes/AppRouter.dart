import 'package:bloc_cubit_theme/Cubit/theme_cubit.dart';
import '../Cubit/counter_cubit.dart';
import 'package:bloc_cubit_theme/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  late ThemeCubit themeCubit;
  late CounterCubit counterCubit;

  AppRouter(){
    counterCubit = CounterCubit();
  }

  Route? generateRoute( RouteSettings settings){
    switch (settings.name){
      case "home": {
        return MaterialPageRoute(builder: (context) => HomeScreen());
      }
    }
  }

}
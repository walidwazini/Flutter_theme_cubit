import 'package:bloc_cubit_theme/Cubit/counter_cubit.dart';

import './Routes/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:bloc_cubit_theme/Cubit/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(Core());

class Core extends StatelessWidget {
  // const Core({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MyApp(
        router: AppRouter(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final AppRouter router;

  MyApp({required this.router});

  @override
  Widget build(BuildContext context) {
    // ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    // bool isDark = themeCubit.isDark;

    return MaterialApp(
      title: 'My App',
      theme: ThemeData.dark(),
      initialRoute: 'home',
      onGenerateRoute: router.generateRoute,
    );
  }
}

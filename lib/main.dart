import './Routes/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:bloc_cubit_theme/Cubit/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './Screens/HomeScreen.dart';

void main() => runApp(Core());

class Core extends StatelessWidget {
  // const Core({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      child: MyApp(
        router: AppRouter(),
      ),
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        )
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  final AppRouter router;

  MyApp({required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData.dark(),
      initialRoute: 'home',
      onGenerateRoute: router.generateRoute,
    );
  }
}

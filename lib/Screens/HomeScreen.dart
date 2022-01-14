import 'package:bloc_cubit_theme/Cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(
      context,
      listen: false,
    );
    bool isDark = themeCubit.isDark;

    return Scaffold(
      appBar: AppBar(),
      body: BlocListener<ThemeCubit, ThemeState>(
        listener: (context, state) {
          // TODO: implement listener
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Theme Changed'),
              backgroundColor: Colors.indigo,
              duration: Duration(milliseconds: 50),
            ),
          );
        },
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, ThemeState state) {
            return Center(
              child: SizedBox(
                width: 120,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: isDark ? Color(0xff5f0737) : Color(0xffd76a9b),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text('Here'),
                  onPressed: () {
                    themeCubit.toggleTheme();
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

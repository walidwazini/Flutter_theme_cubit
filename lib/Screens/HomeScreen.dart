import 'package:bloc_cubit_theme/Cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: false);
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Center(
            child: SizedBox(
              width: 120,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff961c1c),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text('Here'),
                onPressed: () {
                  print(state.toString());
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

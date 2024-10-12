// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:theme/core/theme/bloc/theme_bloc.dart';
import 'package:theme/core/theme/cubit/theme_cubit.dart';
import 'package:theme/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit()..getCurrentTheme(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          if (state is LoadedThemeState) {
            return MaterialApp(
              theme: state.theme,
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            );
          }
          return Container();
        },
      ),
    );
  }
}

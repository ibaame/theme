import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theme/core/theme/app_theme.dart';
import 'package:theme/core/theme/theme_cache_helper.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ThemeEvent>((event, emit) async {
      if (event is GetCurrentThemeEvent) {
        final themeName = await ThemeCacheHelper().getCachedThemeIndex();
        final theme = appThemeData[themeName];
        emit(LoadedThemeState(themeData: theme!));
      } else if (event is ThemeChangedEvent) {
        final themeName = event.theme;
        await ThemeCacheHelper().cacheThemeIndex(themeName);
        emit(LoadedThemeState(themeData: appThemeData[themeName]!));
      }
    });
  }
}

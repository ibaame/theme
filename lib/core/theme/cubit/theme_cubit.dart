import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theme/core/theme/app_theme.dart';
import 'package:theme/core/theme/theme_cache_helper.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  void themeChanged(String themeName) async {
    await ThemeCacheHelper().cacheThemeIndex(themeName);
    emit(LoadedThemeState(theme: appThemeData[themeName]!));
  }

  Future<void> getCurrentTheme() async {
    final themeName = await ThemeCacheHelper().getCachedThemeIndex();
    emit(LoadedThemeState(theme: appThemeData[themeName]!));
  }
}

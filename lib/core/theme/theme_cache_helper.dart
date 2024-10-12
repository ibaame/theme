import 'package:shared_preferences/shared_preferences.dart';

class ThemeCacheHelper {
  Future<void> cacheThemeIndex(String themeName) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("THEME_NAME", themeName);
  }

  Future<String> getCachedThemeIndex() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final cachedThemeName = sharedPreferences.getString("THEME_NAME");
    if (cachedThemeName != null) {
      return cachedThemeName;
    } else {
      return "Blue Light";
    }
  }
}

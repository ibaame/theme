import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:theme/core/theme/bloc/theme_bloc.dart';
import 'package:theme/core/theme/cubit/theme_cubit.dart';
import 'core/theme/app_theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final itemAppTheme = AppTheme.values[index].name;
          return Card(
            color: appThemeData[itemAppTheme]!.primaryColor,
            child: ListTile(
              title: Text(
                itemAppTheme,
                style: appThemeData[itemAppTheme]!.textTheme.titleMedium,
              ),
              onTap: () {
                // context
                //     .read<ThemeBloc>()
                //     .add(ThemeChangedEvent(theme: itemAppTheme));
                //
                // BlocProvider.of<ThemeBloc>(context)
                //     .add(ThemeChangedEvent(theme: itemAppTheme));
                context.read<ThemeCubit>().themeChanged(itemAppTheme);
              },
            ),
          );
        },
      ),
    );
  }
}

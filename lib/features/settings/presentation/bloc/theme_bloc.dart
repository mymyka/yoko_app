import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:yoko_app/utils/utils.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeMode> with MainBoxMixin {
  ThemeBloc() : super(ThemeMode.system) {
    on<ThemeLoadFromLocalStorage>(_onThemeLoadFromLocalStorage);
    on<ThemeChanged>(_onThemeChanged);
  }

  void _onThemeLoadFromLocalStorage(
    ThemeLoadFromLocalStorage event,
    Emitter<ThemeMode> emit,
  ) {
    int? themeIndex = getData<int?>(MainBoxKeys.theme);
    themeIndex ??= ThemeMode.system.index;
    final themeMode = ThemeMode.values[themeIndex];
    emit(themeMode);
  }

  void _onThemeChanged(
    ThemeChanged event,
    Emitter<ThemeMode> emit,
  ) {
    addData(MainBoxKeys.theme, event.themeMode.index);
    emit(event.themeMode);
  }
}

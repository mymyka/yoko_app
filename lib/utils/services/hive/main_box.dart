import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

enum ActiveTheme {
  light(ThemeMode.light),
  dark(ThemeMode.dark),
  system(ThemeMode.system);

  final ThemeMode mode;

  const ActiveTheme(this.mode);
}

enum MainBoxKeys {
  token,
  language,
  theme,
  locale,
  isLogin,
  user,
}

mixin class MainBoxMixin {
  static late Box? mainBox;
  static const _boxName = 'yoko';

  static Future<void> initHive(String prefix) async {
    await Hive.initFlutter();
    mainBox = await Hive.openBox('$prefix$_boxName');
  }

  Future<void> addData<T>(MainBoxKeys key, T data) async {
    await mainBox!.put(key.name, data);
  }

  T getData<T>(MainBoxKeys key) {
    return mainBox!.get(key.name) as T;
  }

  Map<String, dynamic> getMapData(MainBoxKeys key) {
    return Map<String, dynamic>.from(mainBox!.get(key.name) as Map);
  }

  Future<void> removeData(MainBoxKeys key) async {
    await mainBox!.delete(key.name);
  }

  Future<void> logout() async {
    removeData(MainBoxKeys.isLogin);
    removeData(MainBoxKeys.token);
  }

  // Future<void> clearData() async {
  //   try {
  //     if (mainBox != null) {
  //       await mainBox?.close();
  //       await mainBox?.deleteFromDisk();
  //     }
  //   } catch (e, stackTrace) {
  //     // ignore: avoid_print
  //     print('Error: $e\nStack: $stackTrace');
  //   }
  // }
}

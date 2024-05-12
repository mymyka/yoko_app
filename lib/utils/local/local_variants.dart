import 'package:yoko_app/gen/strings.g.dart';

class LocalVariant {
  final AppLocale locale;
  final String path;
  final String name;

  const LocalVariant({
    required this.locale,
    required this.path,
    required this.name,
  });
}

const List<LocalVariant> localVariants = [
  LocalVariant(
    locale: AppLocale.en,
    path: 'assets/img/flags/us.png',
    name: 'English',
  ),
  LocalVariant(
    locale: AppLocale.ua,
    path: 'assets/img/flags/ua.png',
    name: 'Ukrainian',
  ),
];

LocalVariant getCurrentLocalVariant(AppLocale locale) =>
    localVariants.firstWhere(
      (element) => element.locale == locale,
    );

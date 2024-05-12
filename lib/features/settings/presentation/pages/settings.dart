import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/settings/presentation/bloc/theme_bloc.dart';
import 'package:yoko_app/gen/strings.g.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const NewWidget(),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Center(
          child: BlocBuilder<ThemeBloc, ThemeMode>(
            builder: (context, state) {
              return Column(
                children: [
                  DropdownButton(
                    hint: Text('Theme: ${state.name}'),
                    items: const [
                      DropdownMenuItem(
                        value: ThemeMode.system,
                        child: Text('System Theme'),
                      ),
                      DropdownMenuItem(
                        value: ThemeMode.light,
                        child: Text('Light Theme'),
                      ),
                      DropdownMenuItem(
                        value: ThemeMode.dark,
                        child: Text('Dark Theme'),
                      ),
                    ],
                    onChanged: (ThemeMode? value) {
                      context.read<ThemeBloc>().add(ThemeChanged(value!));
                    },
                  ),
                  Text(t.auth.welcome.heading),
                  Switch(
                    value:
                        TranslationProvider.of(context).locale == AppLocale.ua,
                    onChanged: (languageSwitched) {
                      final newLocale =
                          languageSwitched ? AppLocale.ua : AppLocale.en;
                      LocaleSettings.setLocale(newLocale);
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      LocaleSettings.setLocale(AppLocale.ua);
                    },
                    child: Text('Ukrainian'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      LocaleSettings.setLocale(AppLocale.en);
                    },
                    child: Text('English'),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

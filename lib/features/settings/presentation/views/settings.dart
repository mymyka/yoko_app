import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/settings/presentation/bloc/theme_bloc.dart';
import 'package:yoko_app/gen/strings.g.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class SettingsPageView extends StatelessWidget {
  const SettingsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewWidget(),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(t.settings.heading, style: Theme.of(context).textTheme.h2),
          Column(
            children: [
              Center(
                child: BlocBuilder<ThemeBloc, ThemeMode>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        DropdownButton(
                          hint: Text(t.settings.theme),
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
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/flags/us.png', width: 50, height: 50),
              Switch(
                value: TranslationProvider.of(context).locale == AppLocale.ua,
                onChanged: (languageSwitched) {
                  final newLocale =
                      languageSwitched ? AppLocale.ua : AppLocale.en;
                  LocaleSettings.setLocale(newLocale);
                },
              ),
              Image.asset('assets/img/flags/ua.png', width: 50, height: 50),
            ],
          ),
          Button.primary(
            text: "Logout",
            onTap: () {
              context.read<AuthBloc>().add(AuthLogout());
            },
          ),
        ],
      ),
    );
  }
}

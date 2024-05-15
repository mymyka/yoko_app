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
    return Center(
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
                          items: [
                            DropdownMenuItem(
                              value: ThemeMode.system,
                              child: Text(t.settings.system),
                            ),
                            DropdownMenuItem(
                              value: ThemeMode.light,
                              child: Text(t.settings.light),
                            ),
                            DropdownMenuItem(
                              value: ThemeMode.dark,
                              child: Text(t.settings.dark),
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
            text: t.settings.logout,
            onTap: () {
              context.read<AuthBloc>().add(AuthLogout());
            },
          ),
        ],
      ),
    );
  }
}

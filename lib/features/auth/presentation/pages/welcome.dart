import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/gen/strings.g.dart';
import 'package:yoko_app/utils/utils.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LogoAppBar(),
      body: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary,
            child: Column(
              children: [
                Lottie.asset(
                  'assets/lottie/welcome-light.json',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        t.auth.welcome.heading,
                        style: Theme.of(context).textTheme.h1?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        t.auth.welcome.subheading,
                        style: Theme.of(context).textTheme.h4?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button.primary(
                  text: t.auth.register.button,
                  onTap: () => context.go('/register'),
                ),
                const SizedBox(height: 20.0),
                Button.outlined(
                  text: t.auth.login.button,
                  onTap: () => context.go('/login'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/gen/strings.g.dart';
import 'package:yoko_app/utils/ext/text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: [
                Text(
                  t.auth.welcome.heading,
                  style: Theme.of(context).textTheme.h1,
                ),
                Text(
                  t.auth.welcome.subheading,
                  style: Theme.of(context).textTheme.h4,
                ),
              ],
            ),
            Column(
              children: [
                FilledButton(
                  onPressed: () {
                    context.go('/register');
                  },
                  child: Text(t.auth.register.button),
                ),
                const SizedBox(height: 10.0),
                OutlinedButton(
                  onPressed: () {
                    context.go('/login');
                  },
                  child: Text(t.auth.login.button),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

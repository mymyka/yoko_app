import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/gen/strings.g.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  late final _emailController;
  late final _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Lottie.asset(
                  'assets/lottie/login-light.json',
                ),
                Column(
                  children: [
                    InputField(
                      controller: _emailController,
                      labelText: 'Email',
                      onPrimary: true,
                    ),
                    const SizedBox(height: 16),
                    InputField(
                      controller: _passwordController,
                      labelText: 'Password',
                      obscureText: true,
                      onPrimary: true,
                    ),
                    const SizedBox(height: 16),
                    Button.primary(
                      text: "Log In",
                      onPrimary: true,
                      onTap: () {
                        context.read<AuthBloc>().add(
                              AuthLogin(
                                params: LogInParams(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ),
                              ),
                            );
                      },
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      t.auth.login.create,
                      style: Theme.of(context).textTheme.body?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                    Button.link(
                      text: t.auth.register.button,
                      onTap: () {
                        context.go('/register');
                      },
                      onPrimary: true,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

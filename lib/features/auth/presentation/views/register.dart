import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class RegisterPageView extends StatefulWidget {
  const RegisterPageView({super.key});

  @override
  State<RegisterPageView> createState() => _RegisterPageViewState();
}

class _RegisterPageViewState extends State<RegisterPageView> {
  late final _nameController;
  late final _surnameController;
  late final _emailController;
  late final _passwordController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _surnameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
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
                  height: 200,
                  'assets/lottie/register-light.json',
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: InputField(
                            controller: _nameController,
                            labelText: 'Name',
                            onPrimary: true,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: InputField(
                            controller: _surnameController,
                            labelText: 'Surname',
                            onPrimary: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    InputField(
                      controller: _emailController,
                      labelText: "Email",
                      onPrimary: true,
                    ),
                    const SizedBox(height: 16),
                    InputField(
                      controller: _passwordController,
                      labelText: "Password",
                      onPrimary: true,
                    ),
                    const SizedBox(height: 16),
                    Button.primary(
                      text: "Register",
                      onPrimary: true,
                      onTap: () {
                        context.read<AuthBloc>().add(
                              AuthRegister(
                                params: RegisterParams(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                  name: _nameController.text,
                                  surname: _surnameController.text,
                                ),
                              ),
                            );
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Already have an account?",
                      style: Theme.of(context).textTheme.body?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                    Button.link(
                      onPrimary: true,
                      text: "Login",
                      onTap: () {
                        context.go('/login');
                      },
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


// Padding(
//             padding: const EdgeInsets.all(30.0),
//             child: CustomScrollView(
//               scrollDirection: Axis.vertical,
//               slivers: [
//                 SliverFillRemaining(
//                   hasScrollBody: false,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Lottie.asset(
//                         height: 200,
//                         'assets/lottie/register-light.json',
//                       ),
//                       Column(
//                         children: [
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: TextField(
//                                   controller: _nameController,
//                                   decoration: InputDecoration(
//                                     labelText: 'Name',
//                                     border: const OutlineInputBorder(),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                           color:
//                                               Theme.of(context).primaryColor),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(width: 16),
//                               Expanded(
//                                 child: TextField(
//                                   controller: _surnameController,
//                                   decoration: InputDecoration(
//                                     labelText: 'Surname',
//                                     border: const OutlineInputBorder(),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                           color:
//                                               Theme.of(context).primaryColor),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 16),
//                           TextField(
//                             controller: _emailController,
//                             decoration: InputDecoration(
//                               labelText: 'Email',
//                               border: const OutlineInputBorder(),
//                               focusedBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(
//                                     color: Theme.of(context).primaryColor),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 16),
//                           TextField(
//                             controller: _passwordController,
//                             decoration: InputDecoration(
//                               labelText: 'Password',
//                               border: const OutlineInputBorder(),
//                               focusedBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(
//                                     color: Theme.of(context).primaryColor),
//                               ),
//                             ),
//                             obscureText: true,
//                           ),
//                           const SizedBox(height: 16),
//                           Button.primary(
//                             text: t.auth.register.button,
//                             onTap: () {
//                               context.read<AuthBloc>().add(
//                                     AuthRegister(
//                                       params: RegisterParams(
//                                         email: _emailController.text,
//                                         password: _passwordController.text,
//                                         name: _nameController.text,
//                                         surname: _surnameController.text,
//                                       ),
//                                     ),
//                                   );
//                             },
//                           ),
//                         ],
//                       ),
//                       Column(
//                         children: [
//                           Text(
//                             t.auth.register.haveAccount,
//                             style: Theme.of(context).textTheme.body,
//                           ),
//                           Button.link(
//                             text: t.auth.login.button,
//                             onTap: () {
//                               context.go('/login');
//                             },
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
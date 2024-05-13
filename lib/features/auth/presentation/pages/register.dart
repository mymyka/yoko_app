import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/gen/strings.g.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LogoAppBar(),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            context.go('/home');
          }
          if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                elevation: 0,
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                content: AwesomeSnackbarContent(
                  title: t.auth.register.error.heading,
                  message: t.auth.register.error.message,
                  contentType: ContentType.failure,
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: Spinner(),
            );
          }
          return const RegisterPageView();
        },
      ),
    );
  }
}

// Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Column(
//                   children: [
                    // TextField(
                    //   controller: _nameController,
                    //   decoration: InputDecoration(
                    //     labelText: 'Name',
                    //     border: const OutlineInputBorder(),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderSide:
                    //           BorderSide(color: Theme.of(context).primaryColor),
                    //     ),
                    //   ),
                    // ),
//                     const SizedBox(height: 16),
//
//                     const SizedBox(height: 16),
//                     TextField(
//                       controller: _emailController,
//                       decoration: InputDecoration(
//                         labelText: 'Email',
//                         border: const OutlineInputBorder(),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Theme.of(context).primaryColor),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       controller: _passwordController,
//                       decoration: InputDecoration(
//                         labelText: 'Password',
//                         border: const OutlineInputBorder(),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Theme.of(context).primaryColor),
//                         ),
//                       ),
//                       obscureText: true,
//                     ),
//                   ],
//                 ),
//                 FilledButton(
//                   onPressed: () {
//                     context.read<AuthBloc>().add(
//                           AuthRegister(
//                             params: RegisterParams(
//                               name: _nameController.text,
//                               surname: _surnameController.text,
//                               email: _emailController.text,
//                               password: _passwordController.text,
//                             ),
//                           ),
//                         );
//                   },
//                   child: const Text('Register'),
//                 ),
//               ],
//             ),












// Padding(
//             padding: const EdgeInsets.all(30),
//             child: CustomScrollView(
//               scrollDirection: Axis.vertical,
//               slivers: [
//                 SliverFillRemaining(
//                   hasScrollBody: false,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Expanded(
//                         flex: 1,
                        // child: Lottie.asset(
                        //   'assets/lottie/register-light.json',
                        // ),
//                       ),
//                       SizedBox(height: 16),
//                       Expanded(
//                         flex: 3,
//                         child: Column(
//                           children: [
                            // Row(
                            //   children: [
                            //     Expanded(
                            //       child: TextField(
                            //         controller: _nameController,
                            //         decoration: InputDecoration(
                            //           labelText: 'Name',
                            //           border: const OutlineInputBorder(),
                            //           focusedBorder: OutlineInputBorder(
                            //             borderSide: BorderSide(
                            //                 color:
                            //                     Theme.of(context).primaryColor),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //     SizedBox(width: 16),
                            //     Expanded(
                            //       child: TextField(
                            //         controller: _surnameController,
                            //         decoration: InputDecoration(
                            //           labelText: 'Surname',
                            //           border: const OutlineInputBorder(),
                            //           focusedBorder: OutlineInputBorder(
                            //             borderSide: BorderSide(
                            //                 color:
                            //                     Theme.of(context).primaryColor),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   ],
                            // ),
//                             SizedBox(height: 16),
//                             TextField(
//                               controller: _emailController,
//                               decoration: InputDecoration(
//                                 labelText: 'Email',
//                                 border: const OutlineInputBorder(),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                       color: Theme.of(context).primaryColor),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 16),
//                             TextField(
//                               controller: _passwordController,
//                               decoration: InputDecoration(
//                                 labelText: 'Password',
//                                 border: const OutlineInputBorder(),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                       color: Theme.of(context).primaryColor),
//                                 ),
//                               ),
//                               obscureText: true,
//                             ),
//                             SizedBox(height: 16),
//                             Button.primary(
//                               text: t.auth.login.button,
//                               onTap: () {
//                                 context.read<AuthBloc>().add(
//                                       AuthLogin(
//                                         params: LogInParams(
//                                           email: _emailController.text,
//                                           password: _passwordController.text,
//                                         ),
//                                       ),
//                                     );
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                       Expanded(
//                         flex: 1,
//                         child: Column(
//                           children: [
//                             Text(
//                               t.auth.register.haveAccount,
//                               style: Theme.of(context).textTheme.body,
//                             ),
//                             Button.link(
//                               text: t.auth.login.button,
//                               onTap: () {
//                                 context.go('/login');
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
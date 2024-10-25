import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/app_router.gr.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Login'),
          onPressed: () => context.replaceRoute(const TodoListRoute()),
        ),
      ),
    );
  }
}

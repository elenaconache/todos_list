import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/data/service/analytics_service.dart';
import 'package:todo_list/di/dependency_injection.dart';
import 'package:todo_list/navigation/app_router.gr.dart';
import 'package:todo_list/util/context_extensions.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text(context.translations.buttons.login),
          onPressed: () {
            context.replaceRoute(const TodoListRoute());
            getIt<AnalyticsService>().track(
              event: 'Login pressed',
              properties: {
                'trackedAt': DateTime.now().toString()
              },
            );
          },
        ),
      ),
    );
  }
}

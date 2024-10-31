import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:segment_analytics/client.dart';
import 'package:todo_list/localization/app_localization.dart';
import 'package:todo_list/navigation/app_router.dart';
import 'package:todo_list/cubit/todos_cubit.dart';
import 'package:todo_list/di/dependency_injection.dart';

void main() {
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = getIt<AppRouter>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TodosCubit>(),
      child: MaterialApp.router(
        routerConfig: _appRouter.config(
          navigatorObservers: () => [
            ScreenObserver()
          ],
        ),
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          AppLocalizations.delegate,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/navigation/app_router.dart';
import 'package:todo_list/cubit/todos_cubit.dart';
import 'package:todo_list/di/dependency_injection.dart';
import 'package:todo_list/data/repository/todos_repository.dart';

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
    _appRouter = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodosCubit(todosRepository: getIt<TodosRepository>()),
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
      ),
    );
  }
}

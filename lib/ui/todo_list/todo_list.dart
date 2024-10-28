import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/cubit/todos_cubit.dart';
import 'package:todo_list/navigation/app_router.gr.dart';
import 'package:todo_list/util/context_extensions.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final todosState = context.watch<TodosCubit>();

    return todosState.state.status.maybeWhen(loading: () {
      return const Center(child: CircularProgressIndicator());
    }, success: (todos) {
      return ListView.builder(
        itemBuilder: (_, index) => ListTile(
          title: Text(todos[index].title),
          onTap: () => context.pushRoute(TodoDetailRoute(id: todos[index].id)),
        ),
        itemCount: todos.length,
      );
    }, orElse: () {
      return Center(
        child: Text(context.translations.errors.generic),
      );
    });
  }
}

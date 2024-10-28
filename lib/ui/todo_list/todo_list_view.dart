import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/ui/todo_list/todo_list.dart';
import 'package:todo_list/util/context_extensions.dart';

@RoutePage()
class TodoListView extends StatelessWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translations.titles.allTodos),
      ),
      body: const TodoList(),
    );
  }
}

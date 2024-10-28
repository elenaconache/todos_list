import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/localization/translations.i69n.dart';
import 'package:todo_list/ui/todo_list/todo_list.dart';

@RoutePage()
class TodoListView extends StatelessWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    const translations = Translations();
    return Scaffold(
      appBar: AppBar(
        title: Text(translations.titles.allTodos),
      ),
      body: const TodoList(),
    );
  }
}

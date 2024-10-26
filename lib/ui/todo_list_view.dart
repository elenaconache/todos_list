import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/app_router.gr.dart';
import 'package:todo_list/localization/translations.i69n.dart';

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
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          title: Text(translations.titles.todoItem(index)),
          onTap: () => context.pushRoute(TodoDetailRoute(id: index)),
        ),
        itemCount: 22,
      ),
    );
  }
}

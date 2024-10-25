import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/app_router.gr.dart';

@RoutePage()
class TodoListView extends StatelessWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All todos'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          title: Text('Todo #$index'),
          onTap: () => context.pushRoute(TodoDetailRoute(id: index)),
        ),
        itemCount: 22,
      ),
    );
  }
}

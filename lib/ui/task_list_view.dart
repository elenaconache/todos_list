import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/app_router.gr.dart';

@RoutePage()
class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All tasks'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          title: Text('Task #$index'),
          onTap: () => context.pushRoute(TaskDetailRoute(taskId: index)),
        ),
        itemCount: 22,
      ),
    );
  }
}

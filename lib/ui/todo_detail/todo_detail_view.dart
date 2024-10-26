import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/domain/todo_state.dart';
import 'package:todo_list/localization/translations.i69n.dart';

class TodoDetailView extends StatelessWidget {
  final int todoId;

  const TodoDetailView({super.key, required this.todoId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => context.flow<TodoState>().complete()),
        title: Text(const Translations().titles.todoItem(todoId)),
        actions: [
          IconButton(
            onPressed: () => context.flow<TodoState>().update((_) => TodoState.editing),
            icon: const Icon(Icons.edit),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 24),
            // TODO: read state from a cubit
          ],
        ),
      ),
    );
  }
}

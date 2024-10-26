import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/domain/todo_state.dart';
import 'package:todo_list/localization/translations.i69n.dart';

class TodoEditingView extends StatelessWidget {
  final int todoId;

  const TodoEditingView({super.key, required this.todoId});

  @override
  Widget build(BuildContext context) {
    const translations = Translations();
    return Scaffold(
      appBar: AppBar(
        title: Text(translations.titles.editingTodo(todoId)),
        actions: [
          IconButton(
            onPressed: context.flow<TodoState>().complete,
            icon: const Icon(Icons.done),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            TextField(
              onChanged: (_) {
                //TODO: write state to a Cubit class
              },
              decoration: InputDecoration(labelText: translations.labels.title),
            )
          ],
        ),
      ),
    );
  }
}

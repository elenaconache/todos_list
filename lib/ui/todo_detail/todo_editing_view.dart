import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/domain/todo_state.dart';

class TodoEditingView extends StatelessWidget {
  final int todoId;

  const TodoEditingView({super.key, required this.todoId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editing Todo #$todoId'),
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
              decoration: const InputDecoration(labelText: 'Title'),
            )
          ],
        ),
      ),
    );
  }
}

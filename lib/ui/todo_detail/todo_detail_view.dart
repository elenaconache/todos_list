import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/cubit/todos_cubit.dart';
import 'package:todo_list/domain/todo_state.dart';
import 'package:todo_list/localization/translations.i69n.dart';

class TodoDetailView extends StatelessWidget {
  final int todoId;

  const TodoDetailView({super.key, required this.todoId});

  @override
  Widget build(BuildContext context) {
    final todo = context.read<TodosCubit>().findTodo(id: todoId);
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            if (todo != null)
              Text(
                todo.title,
                style: Theme.of(context).textTheme.titleLarge,
              )
          ],
        ),
      ),
    );
  }
}

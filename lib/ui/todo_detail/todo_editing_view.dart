import 'dart:async';

import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/cubit/todos_cubit.dart';
import 'package:todo_list/domain/todo.dart';
import 'package:todo_list/domain/todo_state.dart';
import 'package:todo_list/localization/translations.i69n.dart';

class TodoEditingView extends StatefulWidget {
  final int todoId;

  const TodoEditingView({super.key, required this.todoId});

  @override
  State<TodoEditingView> createState() => _TodoEditingViewState();
}

class _TodoEditingViewState extends State<TodoEditingView> {
  late final TextEditingController _titleController;
  late final Todo? _initialTodo;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _initialTodo = context.read<TodosCubit>().findTodo(id: widget.todoId);
    _titleController.text = _initialTodo?.title ?? '';
  }

  @override
  Widget build(BuildContext context) {
    const translations = Translations();
    return Scaffold(
      appBar: AppBar(
        title: Text(translations.titles.editingTodo(widget.todoId)),
        actions: [
          IconButton(
            onPressed: _updateTodo,
            icon: const Icon(Icons.done),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            if (_initialTodo != null)
              TextField(
                decoration: InputDecoration(labelText: translations.labels.title),
                controller: _titleController,
              )
          ],
        ),
      ),
    );
  }

  void _updateTodo() {
    if (_initialTodo != null) {
      if (_titleController.text != _initialTodo.title) {
        unawaited(context.read<TodosCubit>().editTodo(todo: _initialTodo.copyWith(title: _titleController.text)));
      }
    }
    context.flow<TodoState>().complete();
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }
}

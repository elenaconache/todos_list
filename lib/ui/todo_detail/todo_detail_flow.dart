import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:todo_list/ui/todo_detail/todo_detail_view.dart';
import 'package:todo_list/ui/todo_detail/todo_editing_view.dart';
import 'package:todo_list/data/todo_state.dart';

@RoutePage()
class TodoDetailFlow extends StatelessWidget {
  final int id;

  const TodoDetailFlow({super.key, @pathParam required this.id});

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<TodoDetailFlowState>(
      state: TodoDetailFlowState.viewing,
      onGeneratePages: (todoState, pages) {
        return switch (todoState) {
          TodoDetailFlowState.viewing => [
              MaterialPage(child: TodoDetailView(todoId: id)),
            ],
          TodoDetailFlowState.editing => [
              MaterialPage(child: TodoDetailView(todoId: id)),
              MaterialPage(child: TodoEditingView(todoId: id)),
            ],
        };
      },
    );
  }
}

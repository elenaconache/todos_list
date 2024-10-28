import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_list/data/todo.dart';
import 'package:todo_list/data/repository/todos_repository.dart';

part 'todos_cubit.freezed.dart';
part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  final TodosRepository _todosRepository;
  late final StreamSubscription _todosSubscription;

  TodosCubit({required TodosRepository todosRepository})
      : _todosRepository = todosRepository,
        super(TodosState.initial()) {
    requestTodos();
  }

  Future<void> requestTodos() async {
    emit(TodosState(status: const TodosStatus.loading()));
    await Future.delayed(const Duration(seconds: 1));
    _todosSubscription = _todosRepository.getTodos().listen(
      (todos) {
        emit(TodosState(status: TodosStatus.success(todos: todos)));
      },
    );
  }

  Future<void> editTodo({required Todo todo}) async {
    emit(TodosState(status: const TodosStatus.loading()));
    await Future.delayed(const Duration(seconds: 1));
    _todosRepository.editTodo(todo);
  }

  Todo? findTodo({required int id}) {
    return state.status.maybeMap(
      success: (value) => value.todos.firstWhereOrNull((element) => element.id == id),
      orElse: () => null,
    );
  }

  @override
  Future<void> close() {
    _todosSubscription.cancel();
    return super.close();
  }
}

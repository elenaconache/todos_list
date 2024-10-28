part of 'todos_cubit.dart';

@freezed
class TodosState with _$TodosState {
  const TodosState._();

  factory TodosState({required TodosStatus status}) = _TodosState;

  factory TodosState.initial() => TodosState(status: const TodosStatus.initial());
}

@freezed
class TodosStatus with _$TodosStatus {
  const factory TodosStatus.initial() = _Initial;

  const factory TodosStatus.loading() = _Loading;

  const factory TodosStatus.success({required List<Todo> todos}) = _Success;

  const factory TodosStatus.failure(Error error) = _Failure;
}

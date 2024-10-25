import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

// TODO: use the model instead of strings

@freezed
class Todo with _$Todo {
  const factory Todo({
    required int id,
    required String title,
    required String description,
  }) = _Todo;

  factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);
}

import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';
import 'package:todo_list/data/todo.dart';

@lazySingleton
class TodosRepository {
  late final _todoStreamController = BehaviorSubject<List<Todo>>.seeded(const []);

  TodosRepository() {
    _init();
  }

  Stream<List<Todo>> getTodos() => _todoStreamController.asBroadcastStream();

  void _init() => _todoStreamController.add(const [
        Todo(id: 1, title: 'Add required dependencies', description: 'Update pubspec.yaml file.'),
        Todo(id: 2, title: 'Build project', description: 'Run build_runner. Prefer watch option.'),
        Todo(id: 3, title: 'Analyze code', description: 'Run flutter analyze command.'),
        Todo(id: 4, title: 'Fix analyzer issues', description: 'Use dart apply to easily fix issues.'),
        Todo(id: 5, title: 'Inspect widgets', description: 'Flutter Widget Inspector helps visualize the widget tree.'),
        Todo(id: 6, title: 'Run Simulator', description: 'iPhone 16 Pro'),
        Todo(id: 7, title: 'Update gitignore', description: 'Do not commit .mason files.'),
        Todo(id: 8, title: 'Make mason bricks', description: 'Run mason make for useful bricks.'),
        Todo(id: 9, title: 'Implement cubit', description: 'Cubit is a form of Bloc.'),
        Todo(id: 10, title: 'Separate logic', description: 'Use repositories for fetching data.'),
        Todo(id: 11, title: 'Nest files', description: 'IDEs have options for file nesting that can be configured.'),
        Todo(id: 12, title: 'Localize strings', description: 'Use i69n package for localization.'),
      ]);

  void editTodo(Todo todo) {
    final todos = [
      ..._todoStreamController.value
    ];
    final todoIndex = todos.indexWhere((t) => t.id == todo.id);
    if (todoIndex >= 0) {
      todos[todoIndex] = todo;
    } else {
      todos.add(todo);
    }

    _todoStreamController.add(todos);
  }

  @disposeMethod
  void dispose() => _todoStreamController.close();
}

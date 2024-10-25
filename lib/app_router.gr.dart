// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:todo_list/ui/home_view.dart' as _i1;
import 'package:todo_list/ui/login_view.dart' as _i2;
import 'package:todo_list/ui/today_view.dart' as _i3;
import 'package:todo_list/ui/todo_detail/todo_detail_flow.dart' as _i4;
import 'package:todo_list/ui/todo_list_view.dart' as _i5;

/// generated route for
/// [_i1.HomeView]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeView();
    },
  );
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginView();
    },
  );
}

/// generated route for
/// [_i3.TodayView]
class TodayRoute extends _i6.PageRouteInfo<void> {
  const TodayRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TodayRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodayRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.TodayView();
    },
  );
}

/// generated route for
/// [_i4.TodoDetailFlow]
class TodoDetailRoute extends _i6.PageRouteInfo<TodoDetailRouteArgs> {
  TodoDetailRoute({
    _i7.Key? key,
    required int id,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          TodoDetailRoute.name,
          args: TodoDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'TodoDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TodoDetailRouteArgs>(
          orElse: () => TodoDetailRouteArgs(id: pathParams.getInt('id')));
      return _i4.TodoDetailFlow(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class TodoDetailRouteArgs {
  const TodoDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i7.Key? key;

  final int id;

  @override
  String toString() {
    return 'TodoDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.TodoListView]
class TodoListRoute extends _i6.PageRouteInfo<void> {
  const TodoListRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TodoListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoListRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.TodoListView();
    },
  );
}

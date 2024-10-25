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
import 'package:todo_list/ui/task_detail_view.dart' as _i3;
import 'package:todo_list/ui/task_list_view.dart' as _i4;
import 'package:todo_list/ui/today_view.dart' as _i5;

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
/// [_i3.TaskDetailView]
class TaskDetailRoute extends _i6.PageRouteInfo<TaskDetailRouteArgs> {
  TaskDetailRoute({
    _i7.Key? key,
    required int taskId,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          TaskDetailRoute.name,
          args: TaskDetailRouteArgs(
            key: key,
            taskId: taskId,
          ),
          rawPathParams: {'taskId': taskId},
          initialChildren: children,
        );

  static const String name = 'TaskDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TaskDetailRouteArgs>(
          orElse: () =>
              TaskDetailRouteArgs(taskId: pathParams.getInt('taskId')));
      return _i3.TaskDetailView(
        key: args.key,
        taskId: args.taskId,
      );
    },
  );
}

class TaskDetailRouteArgs {
  const TaskDetailRouteArgs({
    this.key,
    required this.taskId,
  });

  final _i7.Key? key;

  final int taskId;

  @override
  String toString() {
    return 'TaskDetailRouteArgs{key: $key, taskId: $taskId}';
  }
}

/// generated route for
/// [_i4.TaskListView]
class TaskListRoute extends _i6.PageRouteInfo<void> {
  const TaskListRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TaskListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TaskListRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.TaskListView();
    },
  );
}

/// generated route for
/// [_i5.TodayView]
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
      return const _i5.TodayView();
    },
  );
}

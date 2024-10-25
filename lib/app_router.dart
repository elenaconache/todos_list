import 'package:auto_route/auto_route.dart';
import 'package:todo_list/app_router.gr.dart';

@AutoRouterConfig(generateForDir: [
  'lib'
], replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/home', children: [
          AutoRoute(page: TaskListRoute.page, path: 'tasks', initial: true),
          AutoRoute(page: TodayRoute.page, path: 'today'),
        ]),
        AutoRoute(initial: true, page: LoginRoute.page, path: '/login'),
        AutoRoute(page: TaskDetailRoute.page, path: '/home/tasks/:taskId'),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.material();
}

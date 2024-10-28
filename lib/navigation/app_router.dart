import 'package:auto_route/auto_route.dart';
import 'package:todo_list/navigation/app_router.gr.dart';

@AutoRouterConfig(
  generateForDir: [
    'lib'
  ],
  replaceInRouteName: 'View|Flow,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/home', children: [
          AutoRoute(page: TodoListRoute.page, path: 'todos', initial: true),
          AutoRoute(page: TodayRoute.page, path: 'today'),
        ]),
        AutoRoute(initial: true, page: LoginRoute.page, path: '/login'),
        AutoRoute(page: TodoDetailRoute.page, path: '/home/todos/:id'),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.material();
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/app_router.gr.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        TaskListRoute(),
        TodayRoute()
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(currentIndex: tabsRouter.activeIndex, onTap: tabsRouter.setActiveIndex, items: const [
          BottomNavigationBarItem(label: 'Tasks', icon: Icon(Icons.task)),
          BottomNavigationBarItem(label: 'Today', icon: Icon(Icons.task)),
        ]);
      },
    );
  }
}

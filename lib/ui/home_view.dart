import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/navigation/app_router.gr.dart';
import 'package:todo_list/util/context_extensions.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        TodoListRoute(),
        TodayRoute()
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: context.translations.labels.everything,
              icon: const Icon(Icons.all_inbox),
            ),
            BottomNavigationBarItem(
              label: context.translations.labels.today,
              icon: const Icon(Icons.today),
            ),
          ],
        );
      },
    );
  }
}

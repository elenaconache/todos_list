import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/app_router.gr.dart';
import 'package:todo_list/localization/translations.i69n.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const translations = Translations();
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
              label: translations.labels.everything,
              icon: const Icon(Icons.all_inbox),
            ),
            BottomNavigationBarItem(
              label: translations.labels.today,
              icon: const Icon(Icons.today),
            ),
          ],
        );
      },
    );
  }
}

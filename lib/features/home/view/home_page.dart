import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer_app/router/router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AutoTabsRouter(
      routes: const [
        SearchRoute(),
        FavoritesRoute(),
        HistoryRoute(),
        SettingsRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            unselectedItemColor: theme.hintColor,
            selectedItemColor: theme.primaryColor,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
            onTap: (index) => _openPage(index, tabsRouter),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Поиск'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Избранное"),
              BottomNavigationBarItem(icon: Icon(Icons.history), label: 'История'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Настройки'),
            ],
          ),
        );
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}

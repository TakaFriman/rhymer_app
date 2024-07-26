import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer_app/features/favorites/favorites.dart';
import 'package:rhymer_app/features/home/home.dart';
import 'package:rhymer_app/features/history/history.dart';
import 'package:rhymer_app/features/search/search.dart';
import 'package:rhymer_app/features/settings/settings.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(
            page: FavoritesRoute.page,
            path: 'favorites',
          ),
          AutoRoute(
            page: SearchRoute.page,
            path: 'search',
          ),
          AutoRoute(
            page: HistoryRoute.page,
            path: 'poems',
          ),
          AutoRoute(
            page: SettingsRoute.page,
            path: 'settings',
          ),
        ]),
      ];
}

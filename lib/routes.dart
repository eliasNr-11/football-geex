import 'package:flutter/material.dart';
import 'package:football_geex/views/home_screen.dart';
import 'package:football_geex/views/match_detail_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const MatchDetailPage();
          },
        ),
      ],
    ),
  ],
);
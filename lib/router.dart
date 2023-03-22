import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/about_us/about_us_page.dart';
import 'package:flutter_application/ui/pages/destination/destination_page.dart';
import 'package:flutter_application/ui/pages/discover/discover_page.dart';
import 'package:flutter_application/ui/pages/discover/see_more_discover/see_more_discover_page.dart';
import 'package:flutter_application/ui/pages/home/home_page.dart';
import 'package:flutter_application/ui/pages/main/main_navigator.dart';
import 'package:flutter_application/ui/pages/service/service_page.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: '/',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const MainNavigator(),
          // child: const DestinationPage(),
          transitionDuration: const Duration(milliseconds: 600),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: DiscoverPage.routeName,
          name: DiscoverPage.routeName,
          pageBuilder: (context, state) {
            int discoverId =
                int.tryParse(state.queryParams['discoverId']!) ?? 0;
            return CustomTransitionPage(
              key: state.pageKey,
              child: DiscoverPage(discoverId: discoverId),
              transitionDuration: const Duration(milliseconds: 600),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            );
          },
        ),
        GoRoute(
          path: SeeMoreDiscoverPage.routeName,
          name: SeeMoreDiscoverPage.routeName,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const SeeMoreDiscoverPage(),
              transitionDuration: const Duration(milliseconds: 600),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: AboutUsPage.routeName,
      name: AboutUsPage.routeName,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const AboutUsPage(),
          transitionDuration: const Duration(milliseconds: 600),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        );
      },
    ),
    GoRoute(
      path: ServicePage.routeName,
      name: ServicePage.routeName,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const ServicePage(),
          transitionDuration: const Duration(milliseconds: 600),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        );
      },
    ),
    GoRoute(
      path: DestinationPage.routeName,
      name: DestinationPage.routeName,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const DestinationPage(),
          transitionDuration: const Duration(milliseconds: 600),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        );
      },
    ),
  ],
);

final nestedRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: mainNavigatorKey,
      builder: (context, state, child) {
        return const MainNavigator();
      },
      routes: [
        GoRoute(
          path: '/',
          name: '/',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const HomePage(),
              transitionDuration: const Duration(milliseconds: 600),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            );
          },
        ),
        GoRoute(
          path: DestinationPage.routeName,
          name: DestinationPage.routeName,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const DestinationPage(),
              transitionDuration: const Duration(milliseconds: 600),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            );
          },
        ),
      ],
    )
  ],
);

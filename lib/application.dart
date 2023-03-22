import 'package:flutter/material.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/router.dart';
import 'package:flutter_application/themes.dart';
import 'package:flutter_application/ui/pages/about_us/about_us_page.dart';
import 'package:flutter_application/ui/pages/destination/destination_page.dart';
import 'package:flutter_application/ui/pages/discover/discover_page.dart';
import 'package:flutter_application/ui/pages/discover/see_more_discover/see_more_discover_page.dart';
import 'package:flutter_application/ui/pages/pages.dart';
import 'package:flutter_application/ui/pages/service/service_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    /* return MaterialApp(
      theme: light(context),
      darkTheme: dark(context),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      home: AuthNavigation(
        //Flow after user login success this page need user NavigatorSupport
        authorizedBuilder: (context) => const MainNavigator(),

        //Flow after user login success
        splashScreen: AppSplashPage((context) async {
          if (GetIt.instance.get<LocalService>().isAuthorized()) {
            await GetIt.instance.get<AuthBloc>().initializeApp();
            return AuthNavigationState.authorized();
          } else {
            // return AuthNavigationState.unAuthorized();
            return AuthNavigationState.authorized();
          }
        }),

        //Flow user login success this page need user NavigatorSupport¬
        unAuthorizedBuilder: (context) => const AuthenticationNavigator(),

        //Customize if application is have this feature!!
        maintenanceBuilder: (context) => Container(),
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.autoScale(480, name: MOBILE, scaleFactor: 0.4),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScaleDown(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
        background: Container(
          color: const Color(0xFFF5F5F5),
        ),
      ),
    );*/

    return MaterialApp.router(
      routerConfig: router,
      theme: light(context),
      darkTheme: dark(context),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.autoScale(480,
              name: MOBILE, scaleFactor: 0.4),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScaleDown(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
        background: Container(
          color: const Color(0xFFF5F5F5),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/about_us/about_us_page.dart';
import 'package:flutter_application/ui/pages/destination/destination_page.dart';
import 'package:flutter_application/ui/pages/discover/see_more_discover/see_more_discover_page.dart';
import 'package:flutter_application/ui/pages/service/service_page.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderTabCustomWidget extends StatelessWidget {
  final TabController tabController;
  final StreamController<bool> appbarController;
  final bool initData;

  const HeaderTabCustomWidget({
    Key? key,
    required this.tabController,
    required this.appbarController,
    required this.initData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: appbarController.stream,
      initialData: initData,
      builder: (context, snapshot) {
        final data = snapshot.requireData;
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Travel",
                    style: GoogleFonts.laila(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        height: 1.0,
                        color: context.customTheme.primary),
                  ),
                  Text(
                    "Goo",
                    style: GoogleFonts.laila(
                      fontSize: 28,
                      height: 1.0,
                      fontWeight: FontWeight.w700,
                      color: context.customTheme.primary,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                      ),
                      child: TabBar(
                        controller: tabController,
                        isScrollable: true,
                        dividerColor: Colors.white,
                        indicatorColor: context.customTheme.primary,
                        labelColor: context.customTheme.primary,
                        unselectedLabelColor:
                            data == false ? Colors.white : Colors.black,
                        labelStyle: context.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                        unselectedLabelStyle:
                            context.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        labelPadding:
                            const EdgeInsets.symmetric(horizontal: 12),
                        indicatorPadding: EdgeInsets.zero,
                        indicatorWeight: 2,
                        onTap: (index) {
                          if (index == 0) {
                            context.goNamed('/');
                          } else if (index == 1) {
                            context.goNamed(DestinationPage.routeName);
                          } else if (index == 2) {
                            context.goNamed(ServicePage.routeName);
                          } else if (index == 3) {
                            context.goNamed(SeeMoreDiscoverPage.routeName);
                          } else if (index == 4) {
                            context.goNamed(AboutUsPage.routeName);
                          }
                        },
                        tabs: const [
                          Tab(text: 'Home'),
                          Tab(text: 'Destination'),
                          Tab(text: 'Package'),
                          Tab(text: 'Discover'),
                          Tab(text: 'About us'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 24),
              Text(
                "Sign Up",
                style: context.textTheme.bodyLarge?.copyWith(
                  color: data == false ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

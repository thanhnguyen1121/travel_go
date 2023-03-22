import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/discover/discover_page.dart';
import 'package:flutter_application/ui/widgets/header_tab_widget.dart';
import 'package:go_router/go_router.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Assets.images.imgBgHeader.image(
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.81),
                const Color(0xff484848).withOpacity(0.0),
                const Color(0xff9E9E9E).withOpacity(0.0),
                Colors.white,
              ], stops: const [
                0,
                0.3125,
                0.776,
                1
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Your Imagination Is\nYour Only Limit",
                  textAlign: TextAlign.center,
                  style: context.textTheme.displayLarge,
                ),
                const SizedBox(height: 60),
                Text(
                  "We always try to make our customer Happy. We provide all kind of facilities.\n"
                  "Your Satisfaction is our main priority",
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyMedium
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    // context.goNamed(DiscoverPage.routeName);
                    GoRouter.of(context).pushNamed(DiscoverPage.routeName, queryParams: {'discoverId':'1'});
                  },
                  child: Text(
                    "Discover more",
                    style: context.textTheme.titleLarge?.copyWith(
                      height: 1.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/about_us/about_us_page.dart';
import 'package:flutter_application/ui/pages/service/service_page.dart';
import 'package:flutter_application/ui/widgets/travel_goo_button_default.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderTabWidget extends StatelessWidget {
  const HeaderTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 1.0,
                color: Colors.white,
              ),
            ),
            Text(
              "Goo",
              style: GoogleFonts.laila(
                fontSize: 32,
                height: 1.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            )
          ],
        ),
        Flexible(
          child: Wrap(
            spacing: 36,
            children: [
              TravelGooButtonDefault(
                title: "Home",
                titleColor: Colors.white,
                onTap: () {
                  context.go("/");
                },
              ),
              TravelGooButtonDefault(
                title: "About Us",
                titleColor: Colors.white,
                onTap: () {
                  context.go(AboutUsPage.routeName);
                },
              ),
              TravelGooButtonDefault(
                title: "Packages",
                titleColor: Colors.white,
                onTap: () {
                  context.go(ServicePage.routeName);
                },
              ),
            ],
          ),
        ),
        Row(
          children: [
            Assets.icons.icUserProfileOutline.svg(width: 36, height: 36),
          ],
        )
      ],
    );
  }
}

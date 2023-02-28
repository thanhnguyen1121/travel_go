import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
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
            const SizedBox(height: 32,),
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
              Text(
                "Home",
                style: context.textTheme.headline6,
              ),
              Text(
                "About Us",
                style: context.textTheme.headline6,
              ),
              Text(
                "Packages",
                style: context.textTheme.headline6,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Assets.icons.icStarFavorite.svg(width: 36, height: 36),
            const SizedBox(
              width: 32,
            ),
            Assets.icons.icUserProfileOutline.svg(width: 36, height: 36),
          ],
        )
      ],
    );
  }
}

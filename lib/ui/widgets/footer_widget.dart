import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/widgets/travel_goo_button_default.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Travel",
                    style: GoogleFonts.laila(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Goo",
                    style: GoogleFonts.laila(
                      fontSize: 32,
                      height: 1.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Book your trip in minute, get full\nControl for much longer.",
                    textAlign: TextAlign.start,
                    style: context.textTheme.caption,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Company",
                    style: context.textTheme.headline6?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TravelGooButtonDefault(
                    title: "About",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TravelGooButtonDefault(
                    title: "Careers",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TravelGooButtonDefault(
                    title: "Mobile",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact",
                    style: context.textTheme.headline6?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TravelGooButtonDefault(
                    title: "Help/FAQ",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TravelGooButtonDefault(
                    title: "Press",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TravelGooButtonDefault(
                    title: "Affilates",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "More",
                    style: context.textTheme.headline6?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TravelGooButtonDefault(
                    title: "Airlinefees",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TravelGooButtonDefault(
                    title: "Airline",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TravelGooButtonDefault(
                    title: "Low fare tips",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Assets.icons.icFacebook.image(width: 57, height: 57),
                      const SizedBox(
                        width: 24,
                      ),
                      Assets.icons.icInstagram.image(width: 57, height: 57),
                      const SizedBox(
                        width: 24,
                      ),
                      Assets.icons.icTwitter.image(width: 57, height: 57),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Discover our app",
                    style: context.textTheme.bodyText2?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(16)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 6),
                            child: Row(
                              children: [
                                Assets.icons.icGooglePlay
                                    .image(width: 28, height: 28),
                                const SizedBox(
                                  width: 4,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Get it on",
                                      style:
                                          context.textTheme.overline?.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "GOOGLE PLAY",
                                      style:
                                          context.textTheme.overline?.copyWith(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(16)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 6),
                            child: Row(
                              children: [
                                Assets.icons.icApple
                                    .image(width: 28, height: 28),
                                const SizedBox(
                                  width: 4,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Available on the",
                                      style:
                                          context.textTheme.overline?.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "APP STORE",
                                      style:
                                          context.textTheme.overline?.copyWith(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 100,
        ),
        Text(
          "All rights reserved@travelgoo.co",
          style: context.textTheme.bodyText2,
        ),
        const SizedBox(
          height: 60,
        ),
      ],
    );
  }
}

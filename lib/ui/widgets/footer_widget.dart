import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/widgets/travel_goo_button_default.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0A2640),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 40,
          ),
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
                        color: context.customTheme.primary,
                      ),
                    ),
                    Text(
                      "Goo",
                      style: GoogleFonts.laila(
                        fontSize: 32,
                        height: 1.0,
                        fontWeight: FontWeight.w700,
                        color: context.customTheme.primary,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Book your trip in minute, get full\nControl for much longer.",
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: Colors.white.withOpacity(0.8),
                      ),
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
                      style: context.textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TravelGooButtonDefault(
                      title: "About",
                      titleColor: Colors.white.withOpacity(0.8),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TravelGooButtonDefault(
                      title: "Careers",
                      titleColor: Colors.white.withOpacity(0.8),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TravelGooButtonDefault(
                      title: "Mobile",
                      titleColor: Colors.white.withOpacity(0.8),
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
                      style: context.textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TravelGooButtonDefault(
                      title: "Help/FAQ",
                      titleColor: Colors.white.withOpacity(0.8),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TravelGooButtonDefault(
                      title: "Press",
                      titleColor: Colors.white.withOpacity(0.8),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TravelGooButtonDefault(
                      title: "Affilates",
                      titleColor: Colors.white.withOpacity(0.8),
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
                      style: context.textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TravelGooButtonDefault(
                      title: "Airlinefees",
                      titleColor: Colors.white.withOpacity(0.8),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TravelGooButtonDefault(
                      title: "Airline",
                      titleColor: Colors.white.withOpacity(0.8),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TravelGooButtonDefault(
                      title: "Low fare tips",
                      titleColor: Colors.white.withOpacity(0.8),
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
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Get it on",
                                        style: context.textTheme.labelSmall
                                            ?.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "GOOGLE PLAY",
                                        style: context.textTheme.labelSmall
                                            ?.copyWith(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Available on the",
                                        style: context.textTheme.labelSmall
                                            ?.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "APP STORE",
                                        style: context.textTheme.labelSmall
                                            ?.copyWith(
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
            style: context.textTheme.bodyMedium?.copyWith(
              color: Colors.white.withOpacity(0.5)
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}

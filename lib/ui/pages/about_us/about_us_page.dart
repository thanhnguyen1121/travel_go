import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/about_us/widgets/about_travel_goo_widget.dart';
import 'package:flutter_application/ui/pages/about_us/widgets/our_team_widget.dart';
import 'package:flutter_application/ui/widgets/footer_widget.dart';
import 'package:flutter_application/ui/widgets/header_tab_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/why_choose_us_widget.dart';

class AboutUsPage extends StatefulWidget {
  static const routeName = '/AboutUsPage';

  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  static const tag = 'AboutUsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        floatHeaderSlivers: false,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: false,
              floating: false ,
              backgroundColor: Colors.white,
              expandedHeight: 250,
              title: const HeaderTabWidget(),
              flexibleSpace: FlexibleSpaceBar(
                title: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      "About us",
                      style: GoogleFonts.poppins().copyWith(
                        // color: const Color(0xff43B97F),
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
                background: Assets.images.imgAboutUsBanner.image(
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: const [
              WhyChooseUsWidget(),
              AboutTravelGooWidget(),
              OurTeamWidget(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

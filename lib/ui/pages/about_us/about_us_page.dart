import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/about_us/widgets/about_travel_goo_widget.dart';
import 'package:flutter_application/ui/pages/about_us/widgets/our_team_widget.dart';
import 'package:flutter_application/ui/widgets/footer_widget.dart';
import 'package:flutter_application/ui/widgets/header_tab_custom_widget.dart';
import 'package:flutter_application/ui/widgets/header_tab_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/why_choose_us_widget.dart';

class AboutUsPage extends StatefulWidget {
  static const routeName = '/AboutUsPage';

  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage>
    with SingleTickerProviderStateMixin {
  static const tag = 'AboutUsPage';
  late final TabController tabController =
      TabController(length: 4, vsync: this, initialIndex: 3);
  late ScrollController _scrollController;
  final _appbarController = StreamController<bool>();

  bool lastStatus = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      lastStatus = _isShrink;
      _appbarController.sink.add(_isShrink);
    }
  }

  bool get _isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset >
            (MediaQuery.of(context).size.height - kToolbarHeight);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              title: HeaderTabCustomWidget(
                tabController: tabController,
                appbarController: _appbarController,
                initData: _isShrink,
              ),
              elevation: 0,
              backgroundColor: context.customTheme.pageColor,
              expandedHeight: MediaQuery.of(context).size.height,
              flexibleSpace: FlexibleSpaceBar(
                title: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 32.0,
                      bottom: 32.0,
                    ),
                    child: Text(
                      "About us",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
                background: Stack(
                  children: [
                    Assets.images.imgAboutUsBanner.image(
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.81),
                            const Color(0xff484848).withOpacity(0.0),
                            const Color(0xff9E9E9E).withOpacity(0.0),
                            Colors.white,
                          ],
                          stops: const [0, 0.3125, 0.776, 1],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ],
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

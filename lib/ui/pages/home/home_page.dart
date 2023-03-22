import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/home/widgets/book_your_next_trip_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/home_people_say_about_us_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/home_subscribe_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/our_best_package_for_use_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/our_best_service_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/our_popular_destination_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/our_service_widget.dart';
import 'package:flutter_application/ui/widgets/footer_widget.dart';
import 'package:flutter_application/ui/widgets/header_tab_custom_widget.dart';
import 'package:flutter_application/ui/widgets/header_widget.dart';
import 'package:flutter_application/utils/context_extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  final _appbarController = StreamController<bool>();
  bool lastStatus = true;
  late final TabController tabController =
      TabController(length: 5, vsync: this, initialIndex: 0);

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
      backgroundColor: context.customTheme.pageColor,
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
              flexibleSpace: const FlexibleSpaceBar(
                background: HeaderWidget(),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              OurServiceWidget(),
              OurBestServiceWidget(),
              OurPopularDestinationWidget(),
              OurBestPackageForUseWidget(),
              BookYourNextTripWidget(),
              HomePeopleSayAboutUsWidget(),
              HomeSubscribeWidget(),
              FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}

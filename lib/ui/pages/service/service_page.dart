import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/pages/service/widgets/server_our_service_widget.dart';
import 'package:flutter_application/ui/pages/service/widgets/service_card_widget.dart';
import 'package:flutter_application/ui/pages/service/widgets/service_facility_widget.dart';
import 'package:flutter_application/ui/pages/service/widgets/service_post_widget.dart';
import 'package:flutter_application/ui/widgets/footer_widget.dart';
import 'package:flutter_application/ui/widgets/header_tab_custom_widget.dart';
import 'package:flutter_application/utils/context_extension.dart';

class ServicePage extends StatefulWidget {
  static const routeName = '/ServicePage';

  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage>
    with SingleTickerProviderStateMixin {
  static const tag = 'ServicePage';
  late final TabController tabController =
      TabController(length: 5, vsync: this, initialIndex: 2);
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
      backgroundColor: context.customTheme.pageColor,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: false,
              backgroundColor: context.customTheme.pageColor,
              elevation: 0,
              expandedHeight: MediaQuery.of(context).size.height,
              title: HeaderTabCustomWidget(
                tabController: tabController,
                appbarController: _appbarController,
                initData: _isShrink,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Assets.images.imgServiceBg.image(
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 120),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.black.withOpacity(0)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 120),
                          Text(
                            "The Most Popular\nGood Packages",
                            style: context.textTheme.displayLarge,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            "Choose the best package for your travel.",
                            style: context.textTheme.headlineMedium,
                          )
                        ],
                      ),
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
              ServiceCardWidget(),
              ServicePostWidget(),
              ServiceFacilityWidget(),
              ServerOurServiceWidget(),
              SizedBox(height: 100),
              FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}

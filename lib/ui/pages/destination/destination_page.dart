import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/blocs/main/destination/destination_bloc.dart';
import 'package:flutter_application/ui/blocs/main/destination/destination_state.dart';
import 'package:flutter_application/ui/pages/destination/widgets/destination_item_widget.dart';
import 'package:flutter_application/ui/widgets/footer_widget.dart';
import 'package:flutter_application/ui/widgets/travel_goo_error_widget.dart';
import 'package:flutter_application/ui/widgets/travel_goo_loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/header_tab_custom_widget.dart';

class DestinationPage extends StatefulWidget {
  static const routeName = '/DestinationPage';

  const DestinationPage({Key? key}) : super(key: key);

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage>
    with SingleTickerProviderStateMixin {
  static const tag = 'DestinationPage';
  late final TabController tabController =
      TabController(length: 4, vsync: this, initialIndex: 1);
  late ScrollController _scrollController;
  final _appbarController = StreamController<bool>();
  final _bloc = DestinationBloc();

  bool lastStatus = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
    _bloc.init();
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
                background: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: Assets.images.imgDestinationHeader.image(
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
                            "Popular Beach\nDestinations",
                            style: context.textTheme.displayLarge,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            "The whole world awaits.",
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
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 36,
              ),
              BlocProvider.value(
                value: _bloc,
                child: BlocBuilder<DestinationBloc, DestinationState>(
                  builder: (context, state) {
                    return state.when(
                      (models) {
                        return Wrap(
                          runSpacing: 24,
                          spacing: 24,
                          children: models
                              .map(
                                (e) => const DestinationItemWidget(),
                              )
                              .toList(),
                        );
                      },
                      loading: () => const SizedBox(
                        height: 500,
                        child: TravelGooLoadingWidget(),
                      ),
                      error: (error) => TravelGooErrorWidget(
                        message: error.toString(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              const FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

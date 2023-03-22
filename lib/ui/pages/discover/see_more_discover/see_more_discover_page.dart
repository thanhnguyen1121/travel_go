import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/blocs/main/more_discover/more_discover_bloc.dart';
import 'package:flutter_application/ui/blocs/main/more_discover/more_discover_state.dart';
import 'package:flutter_application/ui/pages/discover/widgets/destination_widget.dart';
import 'package:flutter_application/ui/widgets/footer_widget.dart';
import 'package:flutter_application/ui/widgets/header_tab_custom_widget.dart';
import 'package:flutter_application/ui/widgets/travel_goo_error_widget.dart';
import 'package:flutter_application/ui/widgets/travel_goo_loading_widget.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeMoreDiscoverPage extends StatefulWidget {
  static const routeName = 'SeeMoreDiscoverPage';

  const SeeMoreDiscoverPage({Key? key}) : super(key: key);

  @override
  State<SeeMoreDiscoverPage> createState() => _SeeMoreDiscoverPageState();
}

class _SeeMoreDiscoverPageState extends State<SeeMoreDiscoverPage>
    with SingleTickerProviderStateMixin {
  static const tag = 'SeeMoreDiscoverPage';
  final _bloc = MoreDiscoverBloc();
  late final TabController tabController =
      TabController(length: 5, vsync: this, initialIndex: 3);
  late ScrollController _scrollController;
  final _appbarController = StreamController<bool>();
  bool lastStatus = true;

  @override
  void initState() {
    super.initState();
    _bloc.init();
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
      body: BlocProvider.value(
        value: _bloc,
        child: NestedScrollView(
          controller: _scrollController,
          floatHeaderSlivers: false,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                automaticallyImplyLeading: false,
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
                      Assets.images.imgDiscoverHeaderBg.image(
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
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
                              "Discover",
                              style: context.textTheme.displayLarge,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Text(
                              "The newest place people say.",
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
          body: BlocBuilder<MoreDiscoverBloc, MoreDiscoverState>(
            builder: (context, state) {
              return state.when(
                (data) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Other Destinations",
                                style: context.textTheme.titleLarge?.copyWith(
                                    color: const Color(0xff3D3E48),
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 16),
                              Wrap(
                                runSpacing: 32,
                                spacing: 32,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                alignment: WrapAlignment.spaceBetween,
                                children: data
                                    .map(
                                      (e) => DestinationWidget(
                                        model: e,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                      ),
                                    )
                                    .toList(),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 100),
                        const FooterWidget(),
                      ],
                    ),
                  );
                },
                loading: () => const TravelGooLoadingWidget(),
                error: (error) => TravelGooErrorWidget(message: error),
              );
            },
          ),
        ),
      ),
    );
  }
}

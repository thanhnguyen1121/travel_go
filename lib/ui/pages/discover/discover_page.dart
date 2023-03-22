import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/blocs/main/discover/discover_bloc.dart';
import 'package:flutter_application/ui/blocs/main/discover/discover_state.dart';
import 'package:flutter_application/ui/pages/discover/see_more_discover/see_more_discover_page.dart';
import 'package:flutter_application/ui/pages/discover/widgets/destination_widget.dart';
import 'package:flutter_application/ui/widgets/footer_widget.dart';
import 'package:flutter_application/ui/widgets/header_tab_widget.dart';
import 'package:flutter_application/ui/widgets/travel_goo_button_default.dart';
import 'package:flutter_application/ui/widgets/travel_goo_error_widget.dart';
import 'package:flutter_application/ui/widgets/travel_goo_loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverPage extends StatefulWidget {
  static const routeName = 'DiscoverPage';

  final int discoverId;

  const DiscoverPage({Key? key, required this.discoverId}) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  static const tag = 'DiscoverPage';
  DiscoverBloc _bloc = DiscoverBloc();

  @override
  void initState() {
    super.initState();
    _bloc.init(widget.discoverId);
  }

  @override
  void didUpdateWidget(covariant DiscoverPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _bloc = DiscoverBloc();
    _bloc.init(widget.discoverId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: false,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: false,
              floating: false,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              expandedHeight: 250,
              title: const HeaderTabWidget(),
              flexibleSpace: FlexibleSpaceBar(
                title: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      "Discover",
                      style: GoogleFonts.poppins().copyWith(
                        // color: const Color(0xff43B97F),
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
                background: Assets.images.imgDiscoverHeaderBg.image(
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          ];
        },
        body: BlocProvider.value(
          value: _bloc,
          child: BlocBuilder<DiscoverBloc, DiscoverState>(
            builder: (context, state) {
              return state.when(
                (discoverModel, otherDiscover) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          discoverModel.firstCharacter,
                                          style: context.textTheme.displayMedium
                                              ?.copyWith(
                                            color: Colors.black,
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Expanded(
                                          child: Text(
                                            discoverModel.firstParagraph,
                                            style: context.textTheme.bodyMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      discoverModel.secondParagraph,
                                      style: context.textTheme.bodyMedium,
                                    ),
                                    const SizedBox(height: 28),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        discoverModel.imageOne,
                                        width: double.infinity,
                                        height: 300,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      discoverModel.title,
                                      style: context.textTheme.headlineSmall
                                          ?.copyWith(
                                              color: const Color(0xff3D3E48)),
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Assets.icons.icDiscoverLocation
                                            .svg(width: 24, height: 24),
                                        const SizedBox(width: 4),
                                        Text(
                                          discoverModel.location,
                                          style: context.textTheme.bodyMedium
                                              ?.copyWith(
                                            color: const Color(0xff3D3E48),
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      discoverModel.fourParagraph,
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      discoverModel.fiveParagraph,
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Image.asset(
                                              discoverModel.highlightImage[0],
                                              height: 200,
                                              width: double.infinity,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Expanded(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Image.asset(
                                              discoverModel.highlightImage[1],
                                              height: 200,
                                              width: double.infinity,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      discoverModel.sixParagraph,
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 24),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(children: [
                                      Text(
                                        "Other Destinations",
                                        style: context.textTheme.titleLarge
                                            ?.copyWith(
                                          color: Color(0xff3D3E48),
                                        ),
                                      ),
                                      const Spacer(),
                                      TravelGooButtonDefault(
                                        title: "See all",
                                        titleColor: const Color(0xff43B97F),
                                        onTap: () {
                                          context.goNamed(
                                            SeeMoreDiscoverPage.routeName,
                                          );
                                        },
                                      )
                                    ]),
                                    const SizedBox(height: 16),
                                    Wrap(
                                      runSpacing: 12,
                                      children: otherDiscover
                                          .map(
                                            (e) => DestinationWidget(
                                              model: e,
                                            ),
                                          )
                                          .toList(),
                                    )
                                  ],
                                ),
                              ),
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
                error: (error) {
                  return TravelGooErrorWidget(message: error.toString());
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

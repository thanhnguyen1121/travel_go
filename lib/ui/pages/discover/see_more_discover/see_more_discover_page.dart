import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/blocs/main/more_discover/more_discover_bloc.dart';
import 'package:flutter_application/ui/blocs/main/more_discover/more_discover_state.dart';
import 'package:flutter_application/ui/pages/discover/widgets/destination_widget.dart';
import 'package:flutter_application/ui/widgets/footer_widget.dart';
import 'package:flutter_application/ui/widgets/header_tab_widget.dart';
import 'package:flutter_application/ui/widgets/travel_goo_error_widget.dart';
import 'package:flutter_application/ui/widgets/travel_goo_loading_widget.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeMoreDiscoverPage extends StatefulWidget {
  static const routeName = 'SeeMoreDiscoverPage';

  const SeeMoreDiscoverPage({Key? key}) : super(key: key);

  @override
  State<SeeMoreDiscoverPage> createState() => _SeeMoreDiscoverPageState();
}

class _SeeMoreDiscoverPageState extends State<SeeMoreDiscoverPage> {
  static const tag = 'SeeMoreDiscoverPage';
  final _bloc = MoreDiscoverBloc();

  @override
  void initState() {
    super.initState();
    _bloc.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: _bloc,
        child: NestedScrollView(
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

import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/pages/service/widgets/server_our_service_widget.dart';
import 'package:flutter_application/ui/pages/service/widgets/service_card_widget.dart';
import 'package:flutter_application/ui/pages/service/widgets/service_facility_widget.dart';
import 'package:flutter_application/ui/pages/service/widgets/service_post_widget.dart';
import 'package:flutter_application/ui/widgets/footer_widget.dart';
import 'package:flutter_application/ui/widgets/header_tab_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicePage extends StatefulWidget {
  static const routeName = '/ServicePage';

  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  static const tag = 'ServicePage';

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
              floating: false,
              backgroundColor: Colors.white,
              expandedHeight: 250,
              title: const HeaderTabWidget(),
              flexibleSpace: FlexibleSpaceBar(
                title: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      "Service",
                      style: GoogleFonts.poppins().copyWith(
                        // color: const Color(0xff43B97F),
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
                background: Assets.images.imgServiceBg.image(
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

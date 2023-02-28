import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/home/widgets/book_your_next_trip_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/home_people_say_about_us_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/home_subscribe_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/our_best_package_for_use_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/our_best_service_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/our_popular_destination_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/our_service_widget.dart';
import 'package:flutter_application/ui/widgets/footer_widget.dart';
import 'package:flutter_application/ui/widgets/header_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  const [
            HeaderWidget(),
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
    );
  }
}

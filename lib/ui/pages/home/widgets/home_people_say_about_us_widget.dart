import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/home/widgets/people_say_about_us_item_widget.dart';

class HomePeopleSayAboutUsWidget extends StatelessWidget {
  const HomePeopleSayAboutUsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffECF1F0),
      padding: const EdgeInsets.symmetric(vertical: 62),
      child: Column(
        children: [
          Text(
            "What People Say About Us",
            style: context.textTheme.displaySmall,
          ),
          const SizedBox(
            height: 30,
          ),
          CarouselSlider(
            items: [1, 2, 3]
                .map((e) => const PeopleSayAboutUsItemWidget())
                .toList(),
            options: CarouselOptions(
              height: 350,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, _) {},
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/pages/home/widgets/our_best_package_item_widget.dart';
import 'package:flutter_application/ui/widgets/travel_goo_button.dart';
import 'package:flutter_application/utils/context_extension.dart';

class OurBestPackageForUseWidget extends StatelessWidget {
  const OurBestPackageForUseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: width / 1.56479,
      child: Stack(
        children: [
          Container(
            color: const Color(0xffECF1F0),
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(100, 50, 100, 60),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Text(
                  "Best Packages For You",
                  style: context.textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TravelGooButton(
                      title: "Hot Deals",
                      selected: true,
                      onPressed: () {},
                    ),
                    TravelGooButton(
                      title: "Backpack",
                      onPressed: () {},
                    ),
                    TravelGooButton(
                      title: "South Asia",
                      onPressed: () {},
                    ),
                    TravelGooButton(
                      title: "Honeymoon",
                      onPressed: () {},
                    ),
                    TravelGooButton(
                      title: "Europe",
                      onPressed: () {},
                    ),
                    TravelGooButton(
                      title: "More",
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(
                  height: 72,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OurBestPackageItemWidget(
                      imgUrl: Assets.images.imgBestPackagesForYouOne.path,
                      duration: "3 Days, 2 NIghts",
                      price: "\$500 / Person",
                      description:
                          "Explore the Beauty of the island for 3 days\n"
                          "and 2 nights with our travel agency",
                      location: "Indonesia",
                    ),
                    OurBestPackageItemWidget(
                      imgUrl: Assets.images.imgBestPackagesForYouTwo.path,
                      duration: "3 Days, 2 NIghts",
                      price: "\$800 / Person",
                      description: "Enjoy the Shrimes and blossoms here in\n"
                          "this beautiful country",
                      location: "Japan",
                    ),
                    OurBestPackageItemWidget(
                      imgUrl: Assets.images.imgBestPackagesForYouOne.path,
                      duration: "3 Days, 2 NIghts",
                      price: "\$600 / Person",
                      description: "Explore the majestic mountains and\n"
                          "landscapes day and nights",
                      location: "Mountains",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 42,
                ),
                SizedBox(
                  width: 200,
                  child: TravelGooButton(
                    selected: true,
                    onPressed: () {},
                    title: "Discover More",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

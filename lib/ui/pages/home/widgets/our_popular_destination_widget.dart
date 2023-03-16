import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/pages/home/widgets/our_popular_destination_item_widget.dart';
import 'package:flutter_application/utils/context_extension.dart';

class OurPopularDestinationWidget extends StatelessWidget {
  const OurPopularDestinationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageWidth = MediaQuery.of(context).size.width * 0.4717;
    return Container(
      padding: const EdgeInsets.only(top: 48, bottom: 32),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "Our Popular Destinations",
            style: context.textTheme.displaySmall,
          ),
          const SizedBox(
            height: 36,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Assets.images.imgLocationPopularDesinations.image(
                  width: imageWidth,
                  height: imageWidth / 1.36699,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 120),
                  child: Column(
                    children: [
                      OurPopularDestinationItemWidget(
                        imageUrl: Assets.images.imgPopularDestinationOne.path,
                        countryName: "Thailand",
                        description: "20+ Spots\n2D & 3N",
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      OurPopularDestinationItemWidget(
                        imageUrl: Assets.images.imgPopularDestinationTwo.path,
                        countryName: "Indonesia",
                        description: "25+ Spots\n3D & 3N",
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      OurPopularDestinationItemWidget(
                        imageUrl: Assets.images.imgPopularDestinationThree.path,
                        countryName: "New Zeland",
                        description: "20+ Spots\n3D & 2N",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

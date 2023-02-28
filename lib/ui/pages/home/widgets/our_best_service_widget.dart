import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/pages/home/widgets/our_best_service_item_widget.dart';
import 'package:flutter_application/utils/context_extension.dart';

class OurBestServiceWidget extends StatelessWidget {
  const OurBestServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: width / 2.388881,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Assets.images.imgOurBestService.image(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                const SizedBox(height: 30),
                Text(
                  "We always try to give you\nthe best service",
                  textAlign: TextAlign.center,
                  style: context.textTheme.headline3,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "We always try to make our customer Happy. We provide all kind of\n"
                  "facilities. Your Satisfaction is our main priority.",
                  style: context.textTheme.bodyText2,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OurBestServiceItemWidget(
                      iconPath: Assets.icons.icSimpleCalender.path,
                      title: "15+",
                      subTitle: "Years of\nExperience",
                    ),
                    OurBestServiceItemWidget(
                      iconPath: Assets.icons.icBarChartOutlined.path,
                      title: "15k+",
                      subTitle: "Happy\nTravellers",
                    ),
                    OurBestServiceItemWidget(
                      iconPath: Assets.icons.icCarbonMap.path,
                      title: "650+",
                      subTitle: "Places Visited",
                    ),
                    OurBestServiceItemWidget(
                      iconPath: Assets.icons.icHistory.path,
                      title: "2k+",
                      subTitle: "Travel History",
                    ),
                  ],
                ),
                const SizedBox(height: 40),
              ],
            ),
          )
        ],
      ),
    );
  }
}

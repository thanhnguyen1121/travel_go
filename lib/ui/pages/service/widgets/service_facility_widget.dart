import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/service/widgets/service_facility_item_widget.dart';
import 'package:flutter_application/ui/widgets/design_system/travel_fill_button.dart';

class ServiceFacilityWidget extends StatelessWidget {
  const ServiceFacilityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: SizedBox(
        height: 550,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Assets.images.imgFancilityBg.image(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20, left: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Facilities",
                          style: context.textTheme.displaySmall
                              ?.copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing "
                          "elit ut aliquam, purus sit amet luctus venenatis, "
                          "lectus magna fringilla urna, porttitor rhoncus dolor "
                          "purus non enim luctus venenatis, lectus magna fringilla urna, "
                          "porttitor rhoncus dolor purus non eni",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 12),
                        TravelFillButton(content: 'Read More', onTap: () {}),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Wrap(
                    runSpacing: 16,
                    spacing: 16,
                    children: [
                      ServiceFacilityItemWidget(
                        iconUrl: Assets.icons.icFacilityBaby.path,
                        title: "Baby",
                        description: "FREE BUGGY",
                      ),
                      ServiceFacilityItemWidget(
                        iconUrl: Assets.icons.icFacilityDrink.path,
                        title: "Drinks",
                        description: "INCLUDED",
                      ),
                      ServiceFacilityItemWidget(
                        iconUrl: Assets.icons.icFacilityCamp.path,
                        title: "Camp",
                        description: "INCLUDED",
                      ),
                      ServiceFacilityItemWidget(
                        iconUrl: Assets.icons.icFacilityWorld.path,
                        title: "World",
                        description: "CUSTOM TOURS",
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

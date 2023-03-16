import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/pages/service/widgets/service_card_item_widget.dart';

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: Row(
        children: [
          Expanded(
            child: ServiceCardItemWidget(
              iconUrl: Assets.icons.icServiceBestPrice.path,
              title: "Get Best Price",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                  "Sed arcu eu, dui tortor, proin eu lectus pellentesque. "
                  "A cras suscipit amet ",
              onTap: () {},
            ),
          ),
          Expanded(
            child: ServiceCardItemWidget(
              iconUrl: Assets.icons.icServiceDestination.path,
              title: "All Destination",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                  "Sed arcu eu, dui tortor, proin eu lectus pellentesque. "
                  "A cras suscipit amet ",
              onTap: () {},
            ),
          ),
          Expanded(
            child: ServiceCardItemWidget(
              iconUrl: Assets.icons.icServiceCityTour.path,
              title: "City Tours",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                  "Sed arcu eu, dui tortor, proin eu lectus pellentesque. "
                  "A cras suscipit amet ",
              onTap: () {},
            ),
          ),
          Expanded(
            child: ServiceCardItemWidget(
              iconUrl: Assets.icons.icServicePhotography.path,
              title: "Photography",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                  "Sed arcu eu, dui tortor, proin eu lectus pellentesque. "
                  "A cras suscipit amet ",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

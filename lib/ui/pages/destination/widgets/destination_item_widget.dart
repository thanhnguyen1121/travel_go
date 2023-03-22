import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/destination/widgets/convenient_item_widget.dart';

class DestinationItemWidget extends StatelessWidget {
  const DestinationItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: context.customTheme.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          context.customTheme.shadowF9,
        ],
      ),
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              Assets.images.imgDestinationOne.path,
              width: 310,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Text(
                "Swiss Apls",
                style: context.textTheme.headlineSmall,
              ),
              const Spacer(),
              Assets.icons.icBlackStar.svg(width: 24, height: 24),
              Text("4.7", style: context.textTheme.headlineSmall),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "3Days 4 Nights",
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.customTheme.hexF9,
              height: 1.0,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ConvenientItemWidget(
                  icon: Assets.icons.icFlight.svg(), title: '2 Flights'),
              ConvenientItemWidget(
                  icon: Assets.icons.icHotel.svg(), title: '1 Hotel'),
              ConvenientItemWidget(
                  icon: Assets.icons.icCar.svg(), title: '2 Transfers'),
              ConvenientItemWidget(
                  icon: Assets.icons.icTrekking.svg(), title: '4 Activities'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "\u2022  Tour combo with return airport transfer",
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.customTheme.black.withOpacity(0.5),
            ),
          ),
          Text(
            "\u2022  City Tour",
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.customTheme.black.withOpacity(0.5),
            ),
          ),
          Text(
            "\u2022  Curious Corner",
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.customTheme.black.withOpacity(0.5),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Text(
                "₹88,952",
                style: context.textTheme.bodyMedium?.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: context.customTheme.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                width: 36,
              ),
              Text(
                "₹88,952",
                style: context.textTheme.headlineSmall?.copyWith(
                  color: context.customTheme.black,
                ),
              ),
              Text(
                "Per person",
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.customTheme.hexF9,
                  height: 2.0
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

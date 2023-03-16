import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/service/widgets/service_item_widget.dart';

class ServerOurServiceWidget extends StatelessWidget {
  const ServerOurServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "BENEFITS",
            style: context.textTheme.bodyMedium?.copyWith(
              color: const Color(0xff3D3E48),
            ),
          ),
          Text(
            "OUR SERVICE",
            style: context.textTheme.headlineMedium?.copyWith(
              color: const Color(0xff3D3E48),
            ),
          ),
          const SizedBox(height: 36),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Wrap(
              runSpacing: 40,
              spacing: 40,
              children: [
                ServiceItemWidget(
                  iconUrl: Assets.icons.icServiceHiking.path,
                  title: "Hiking",
                  description:
                      "Phasellus enim libero, blandit vel sapien vitae, "
                      "condimentum ultricies magna et. Quisque euismod orci ut et lobortis.",
                  onTap: () {},
                ),
                ServiceItemWidget(
                  iconUrl: Assets.icons.icServiceStaking.path,
                  title: "Staking",
                  description:
                      "Phasellus enim libero, blandit vel sapien vitae, "
                      "condimentum ultricies magna et. Quisque euismod orci ut et lobortis.",
                  onTap: () {},
                ),
                ServiceItemWidget(
                  iconUrl: Assets.icons.icServiceClimbing.path,
                  title: "Climbing",
                  description:
                      "Phasellus enim libero, blandit vel sapien vitae, "
                      "condimentum ultricies magna et. Quisque euismod orci ut et lobortis.",
                  onTap: () {},
                ),
                ServiceItemWidget(
                  iconUrl: Assets.icons.icServiceTour.path,
                  title: "Tours",
                  description:
                      "Phasellus enim libero, blandit vel sapien vitae, "
                      "condimentum ultricies magna et. Quisque euismod orci ut et lobortis.",
                  onTap: () {},
                ),
                ServiceItemWidget(
                  iconUrl: Assets.icons.icServiceDiving.path,
                  title: "Diving",
                  description:
                      "Phasellus enim libero, blandit vel sapien vitae, "
                      "condimentum ultricies magna et. Quisque euismod orci ut et lobortis.",
                  onTap: () {},
                ),
                ServiceItemWidget(
                  iconUrl: Assets.icons.icServiceFlying.path,
                  title: "Flying",
                  description:
                      "Phasellus enim libero, blandit vel sapien vitae, "
                      "condimentum ultricies magna et. Quisque euismod orci ut et lobortis.",
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

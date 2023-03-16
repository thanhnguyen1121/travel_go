import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/about_us/widgets/our_service_item_widget.dart';
import 'package:flutter_application/ui/pages/about_us/widgets/our_team_member_widget.dart';

class OurTeamWidget extends StatelessWidget {
  const OurTeamWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Our Teams",
            style: context.textTheme.headlineSmall?.copyWith(
              color: const Color(0xff3D3E48),
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "The people behind the work",
            style: context.textTheme.bodyMedium?.copyWith(
              color: const Color(0xff3D3E48),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Conversion angel investor entrepreneur first mover advantage."
            "\nHandshake infographic mass market crowdfunding iteration."
            "\nTraction stock user experience deployment beta innovator incubator focus. ",
            style: context.textTheme.bodySmall?.copyWith(
              color: const Color(0xff3D3E48),
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OurTeamMemberWidget(
                urlAvt: Assets.images.imgAboutTravelGoo.path,
                name: "Agung perdana",
                work: "Web Designer",
              ),
              OurTeamMemberWidget(
                urlAvt: Assets.images.imgAboutTravelGoo.path,
                name: "Viola Resti",
                work: "Marketing Director",
              ),
              OurTeamMemberWidget(
                urlAvt: Assets.images.imgAboutTravelGoo.path,
                name: "Rahardianysah",
                work: "International Relations",
              ),
            ],
          ),
          const SizedBox(height: 100),
          Row(
            children: [
              Expanded(
                child: OurServiceItemWidget(
                    iconUrl: Assets.icons.icTravel.path, title: "TRAVEL"),
              ),
              Expanded(
                child: OurServiceItemWidget(
                    iconUrl: Assets.icons.icCityTour.path, title: "CITY TOUR"),
              ),
              Expanded(
                child: OurServiceItemWidget(
                    iconUrl: Assets.icons.icIslandTour.path,
                    title: "ISLAND TOUR"),
              ),
              Expanded(
                child: OurServiceItemWidget(
                    iconUrl: Assets.icons.icExploreWorld.path,
                    title: "EXPLORE WORLD"),
              ),
            ],
          ),
          const SizedBox(height: 100)
        ],
      ),
    );
  }
}

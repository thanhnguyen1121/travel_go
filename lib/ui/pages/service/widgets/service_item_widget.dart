import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/widgets/design_system/travel_fill_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceItemWidget extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String description;
  final VoidCallback? onTap;

  const ServiceItemWidget({
    Key? key,
    required this.iconUrl,
    required this.title,
    required this.description,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            iconUrl,
            width: 36,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.textTheme.headlineSmall?.copyWith(
                    color: const Color(0xff3D3E48),
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  maxLines: 5,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: const Color(0xff3D3E48),
                  ),
                ),
                const SizedBox(height: 16),
                TravelFillButton(
                  content: "Read More",
                  onTap: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

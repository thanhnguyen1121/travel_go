import 'package:flutter/material.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceFacilityItemWidget extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String description;

  const ServiceFacilityItemWidget({
    Key? key,
    required this.iconUrl,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 158,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 8,
            offset: const Offset(0, 8),
          )
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconUrl,
            width: 48,
            height: 48,
          ),
          Text(
            title,
            style: context.textTheme.displaySmall?.copyWith(
              color: const Color(0xff3D3E48),
            ),
          ),
          Text(
            description,
            style: context.textTheme.bodyMedium?.copyWith(
              color: const Color(0xff3D3E48),
            ),
          ),
        ],
      ),
    );
  }
}

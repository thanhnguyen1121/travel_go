import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OurServiceItemWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final String description;
  final bool enableShadow;

  const OurServiceItemWidget({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.description,
    required this.enableShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: enableShadow
            ? [
                BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: const Offset(0, 4),
                    blurRadius: 16),
              ]
            : null,
        color: enableShadow ? Colors.white : const Color(0xffF9F9F9),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.fromLTRB(32, 28, 32, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 48,
            height: 48,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            title,
            style: context.textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            description,
            style: context.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}

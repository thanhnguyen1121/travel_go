import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceCardItemWidget extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String description;
  final VoidCallback? onTap;

  const ServiceCardItemWidget({
    Key? key,
    required this.iconUrl,
    required this.title,
    required this.description,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(iconUrl, width: 44, height: 44),
          const SizedBox(height: 8),
          Text(
            title,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: const Color(0xff3D3E48),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: context.textTheme.bodyMedium?.copyWith(
              color: const Color(0xff3D3E48),
            ),
          ),
          const SizedBox(height: 16),
          Material(
            color: const Color(0xff43B97F),
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              onTap: onTap?.call,
              borderRadius: BorderRadius.circular(16),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Text(
                  "READ MORE",
                  style: context.textTheme.bodyMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

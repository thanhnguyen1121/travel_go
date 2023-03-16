import 'package:flutter/material.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OurServiceItemWidget extends StatelessWidget {
  final String iconUrl;
  final String title;

  const OurServiceItemWidget({
    Key? key,
    required this.iconUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(iconUrl, width: 128, height: 128),
        const SizedBox(height: 8),
        Text(
          title,
          style: context.textTheme.titleLarge
              ?.copyWith(color: const Color(0xffA8A7AB)),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookStepItemWidget extends StatelessWidget {
  final Color iconBgColor;
  final String iconPath;
  final String title;
  final String subtitle;

  const BookStepItemWidget({
    Key? key,
    required this.iconBgColor,
    required this.iconPath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: iconBgColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: const Offset(0, 4),
                  blurRadius: 4)
            ],
          ),
          child: SizedBox(
            width: 32,
            height: 32,
            child: SvgPicture.asset(iconPath, width: 32, height: 32),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: context.textTheme.bodyText1
                    ?.copyWith(color: const Color(0xff5E6282)),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                subtitle,
                style: context.textTheme.bodyText2
                    ?.copyWith(color: const Color(0xff5E6282)),
              )
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';

class ConvenientItemWidget extends StatelessWidget {
  final Widget icon;
  final String title;

  const ConvenientItemWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: context.textTheme.bodySmall
              ?.copyWith(color: context.customTheme.black.withOpacity(0.5)),
        )
      ],
    );
  }
}

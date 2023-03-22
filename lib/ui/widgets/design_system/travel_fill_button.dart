import 'package:flutter/material.dart';
import 'package:flutter_application/utils/context_extension.dart';

class TravelFillButton extends StatelessWidget {
  final String content;
  final VoidCallback? onTap;
  final Color? fillColor;
  final Color? contentColor;

  const TravelFillButton({
    Key? key,
    required this.content,
    this.fillColor,
    this.contentColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: fillColor ?? context.customTheme.primary,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onTap?.call,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            content,
            style: context.textTheme.bodyLarge?.copyWith(
              color: contentColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

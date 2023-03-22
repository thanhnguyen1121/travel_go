import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';

class TravelOutLineButton extends StatelessWidget {
  final String content;
  final VoidCallback? onTap;
  final Color? borderColor;
  final Color? contentColor;

  const TravelOutLineButton({
    Key? key,
    required this.content,
    this.borderColor,
    this.contentColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onTap?.call,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor ?? context.customTheme.primary,
              width: 1,
            ),
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

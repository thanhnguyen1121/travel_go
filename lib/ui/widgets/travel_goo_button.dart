import 'package:flutter/material.dart';
import 'package:flutter_application/utils/context_extension.dart';

class TravelGooButton extends StatelessWidget {
  final bool? selected;
  final String title;
  final VoidCallback? onPressed;

  const TravelGooButton({
    Key? key,
    required this.title,
    this.selected,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color:
          selected == true ? const Color(0xff00A651) : const Color(0xff666666),
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onPressed?.call,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          width: 120,
          alignment: Alignment.center,
          child: Text(
            title,
            style: context.textTheme.bodyLarge?.copyWith(
              color: Colors.white,
              height: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}

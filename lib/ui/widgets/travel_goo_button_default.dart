import 'package:flutter/material.dart';
import 'package:flutter_application/utils/context_extension.dart';

class TravelGooButtonDefault extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const TravelGooButtonDefault({Key? key, required this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      onTap: onTap?.call,
      child: Text(
        title,
        style: context.textTheme.bodyText2?.copyWith(
          fontSize: 16,
        ),
      ),
    );
  }
}

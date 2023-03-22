import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';

class TravelGooErrorWidget extends StatelessWidget {
  final String message;

  const TravelGooErrorWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        message,
        style: context.textTheme.bodyLarge,
      ),
    );
  }
}

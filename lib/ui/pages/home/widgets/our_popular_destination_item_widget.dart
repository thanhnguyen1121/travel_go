import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/utils/context_extension.dart';

class OurPopularDestinationItemWidget extends StatelessWidget {
  final String imageUrl;
  final String countryName;
  final String description;

  const OurPopularDestinationItemWidget({
    Key? key,
    required this.imageUrl,
    required this.countryName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.08),
              offset: const Offset(3, 3),
              blurRadius: 10)
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 150,
              height: 150,
              fit: BoxFit.fill,
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    countryName,
                    style: context.textTheme.bodyText1?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    description,
                    style: context.textTheme.bodyText1?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  Assets.icons.icNavigateNext.svg(width: 32, height: 32)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application/data/model/discover_model.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/discover/discover_page.dart';
import 'package:flutter_application/ui/widgets/design_system/travel_fill_button.dart';
import 'package:go_router/go_router.dart';

class DestinationWidget extends StatelessWidget {
  final DiscoverModel model;
  final double? width;

  const DestinationWidget({Key? key, required this.model, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 210,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Image.asset(
              model.imageOne,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title,
                    style: context.textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    model.location,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24),
                  TravelFillButton(
                    content: "View more",
                    onTap: () {
                      context.goNamed(DiscoverPage.routeName,
                          queryParams: {'discoverId': model.id.toString()});
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

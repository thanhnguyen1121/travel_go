import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/widgets/design_system/travel_out_line_button.dart';

class ServicePostItemWidget extends StatelessWidget {
  const ServicePostItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: 240,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Assets.images.imgServicePost.image(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Water City Dreams",
                    style: context.textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "September 18, 2022",
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam,"
                    " purus sit amet luctus venenatis",
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TravelOutLineButton(content: "Read More", onTap: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

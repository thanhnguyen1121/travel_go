import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/utils/context_extension.dart';

class OurBestPackageItemWidget extends StatelessWidget {
  final String imgUrl;
  final String duration;
  final String price;
  final String description;
  final String location;

  const OurBestPackageItemWidget({
    Key? key,
    required this.imgUrl,
    required this.duration,
    required this.price,
    required this.description,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        width: 300,
        height: 355,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                imgUrl,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          duration,
                          style: context.textTheme.bodyMedium,
                        ),
                        const Spacer(),
                        Text(
                          price,
                          style: context.textTheme.bodyMedium,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          context.textTheme.bodyLarge?.copyWith(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Assets.icons.icLocation.svg(width: 20, height: 20),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              location,
                              style: context.textTheme.titleLarge?.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "Know More",
                          style: context.textTheme.bodyLarge?.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

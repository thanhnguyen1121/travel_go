import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/utils/context_extension.dart';

class BookYourTripItemWidget extends StatelessWidget {
  const BookYourTripItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.02),
                offset: const Offset(0, 100),
                blurRadius: 80),
            BoxShadow(
                color: Colors.black.withOpacity(0.0152),
                offset: const Offset(0, 64.81),
                blurRadius: 46.85),
            BoxShadow(
                color: Colors.black.withOpacity(0.0121),
                offset: const Offset(0, 38.52),
                blurRadius: 25.48),
            BoxShadow(
                color: Colors.black.withOpacity(0.01),
                offset: const Offset(0, 20),
                blurRadius: 13),
            BoxShadow(
                color: Colors.black.withOpacity(0.079),
                offset: const Offset(0, 8.15),
                blurRadius: 6.52),
            BoxShadow(
                color: Colors.black.withOpacity(0.048),
                offset: const Offset(0, 1.85),
                blurRadius: 3.15),
          ],
          borderRadius: BorderRadius.circular(26)),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Assets.images.imgBookYourTripItem.image(
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Trip To Greece",
            style: context.textTheme.bodyLarge?.copyWith(
              fontSize: 18,
              color: const Color(0xff080809),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                "14-29 June ",
                style: context.textTheme.bodyMedium?.copyWith(
                  color: const Color(0xff84829A),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 12,
                child: VerticalDivider(
                  color: Color(0xff84829A),
                  thickness: 1,
                  width: 1,
                ),
              ),
              Text(
                " by Robbin joseph",
                style: context.textTheme.bodyMedium?.copyWith(
                  color: const Color(0xff84829A),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffF5F5F5),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  width: 16,
                  height: 16,
                  child: Assets.icons.icLeaf.svg(width: 16, height: 16),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffF5F5F5),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  width: 16,
                  height: 16,
                  child: Assets.icons.icMap.svg(width: 16, height: 16),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffF5F5F5),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  width: 16,
                  height: 16,
                  child: Assets.icons.icSend.svg(width: 16, height: 16),
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Assets.icons.icBuilding.svg(width: 16, height: 16),
              const SizedBox(
                width: 4,
              ),
              Text(
                "24 people going",
                style: context.textTheme.bodyLarge
                    ?.copyWith(color: const Color(0xff84829A)),
              ),
              const Spacer(),
              Assets.icons.icHeart.svg(width: 20, height: 20)
            ],
          )
        ],
      ),
    );
  }
}

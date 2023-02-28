import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BookNextTripOngoingWidget extends StatelessWidget {
  const BookNextTripOngoingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
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
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Assets.images.imgTripCompleteHeader
                .image(width: 50, height: 50, fit: BoxFit.cover),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Ongoing",
                style: context.textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff84829A),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Trip to rome",
                style: context.textTheme.bodyText1?.copyWith(
                  color: const Color(0xff080809),
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "40%",
                      style: context.textTheme.bodyText2?.copyWith(
                        color: const Color(0xff8A79DF),
                        fontSize: 14,
                      )),
                  TextSpan(
                    text: " completed",
                    style: context.textTheme.bodyText2?.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 8,),
              LinearPercentIndicator(
                width: 150,
                lineHeight: 5.0,
                barRadius: const Radius.circular(30),
                padding: EdgeInsets.zero,
                percent: 0.4,
                progressColor: const Color(0xff8A79DF),
              )
            ],
          )
        ],
      ),
    );
  }
}

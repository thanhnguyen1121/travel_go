import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/home/widgets/book_next_trip_high_light_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/book_step_item_widget.dart';

class BookYourNextTripWidget extends StatelessWidget {
  const BookYourNextTripWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(140, 32, 140, 48),
      child: Column(
        children: [
          Text(
            "Book Your Next Trip in 3 Easy Steps",
            style: context.textTheme.headline3,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Easy and Fast",
            style: context.textTheme.headline5
                ?.copyWith(fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Wrap(
                      runSpacing: 40,
                      children: [
                        BookStepItemWidget(
                          iconPath: Assets.icons.icChooseDestination.path,
                          title: "Choose Destination",
                          iconBgColor: const Color(0xffF0BB1F),
                          subtitle:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, tortor tempus.",
                        ),
                        BookStepItemWidget(
                          iconPath: Assets.icons.icMakePayment.path,
                          title: "Make Payment",
                          iconBgColor: const Color(0xffF15A2B),
                          subtitle:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, tortor tempus.",
                        ),
                        BookStepItemWidget(
                          iconPath:
                              Assets.icons.icReachAirportAndSelectDate.path,
                          title: "Reach Airport on Selected Date",
                          iconBgColor: const Color(0xff006380),
                          subtitle:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, tortor tempus.",
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: BookNextTripHighLightWidget(),
              )
            ],
          )
        ],
      ),
    );
  }
}

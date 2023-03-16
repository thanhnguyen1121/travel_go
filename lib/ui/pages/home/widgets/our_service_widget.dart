import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';

import 'our_service_item_widget.dart';

class OurServiceWidget extends StatelessWidget {
  const OurServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 72,
          ),
          Text(
            "Our Service",
            style: context.textTheme.displaySmall,
          ),
          const SizedBox(
            height: 62,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: OurServiceItemWidget(
                  iconPath: Assets.icons.icTicketBooking.path,
                  title: "Ticket Booking",
                  description: "We book all kind of national or international\n"
                      "ticket for your destinaion.",
                  enableShadow: false,
                ),
              ),
              Expanded(
                child: OurServiceItemWidget(
                  iconPath: Assets.icons.icHotelBooking.path,
                  title: "Hotel Booking",
                  description: "You can easily book your according to your\n"
                      "budget hotel by our website.",
                  enableShadow: true,
                ),
              ),
              Expanded(
                child: OurServiceItemWidget(
                  iconPath: Assets.icons.icTourPlan.path,
                  title: " Tour Plan",
                  description:
                      "We provide you the best plan within a short\ntime explore more.",
                  enableShadow: false,
                ),
              ),
            ],
          ),
          const SizedBox(height: 88),
        ],
      ),
    );
  }
}

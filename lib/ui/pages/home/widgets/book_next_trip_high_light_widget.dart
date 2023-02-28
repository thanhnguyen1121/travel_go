import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/home/widgets/book_next_trip_ongoing_widget.dart';
import 'package:flutter_application/ui/pages/home/widgets/book_your_trip_item_widget.dart';

class BookNextTripHighLightWidget extends StatelessWidget {
  const BookNextTripHighLightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 245,
      height: 408,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              margin: const EdgeInsets.only(bottom: 40),
              alignment: Alignment.topCenter,
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff59B1E6),
                        blurRadius: 150,
                        offset: Offset(0, 0))
                  ]),
            ),
          ),
          const Positioned.fill(
            right: 100,
            child: BookYourTripItemWidget(),
          ),
          const Positioned.fill(
            top: 150,
            left: 200,
            child: Align(child: BookNextTripOngoingWidget()),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/widgets/design_system/travel_text_field.dart';
import 'package:flutter_application/ui/widgets/travel_goo_button.dart';

class HomeSubscribeWidget extends StatelessWidget {
  const HomeSubscribeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 490,
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: Stack(
        children: [
          Assets.images.imgBgSubcribe.image(
            width: double.infinity,
            height: 490,
            fit: BoxFit.fitWidth,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Subscribe to get information, latest news and other "
                    "interesting offers about Cobham",
                    textAlign: TextAlign.center,
                    style: context.textTheme.headline5?.copyWith(
                      color: const Color(0xff5E6282),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 350,
                        height: 50,
                        child: TravelTextField(
                          prefixIcon:
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Assets.icons.icEmail.svg(width: 24, height: 24),
                              ),
                          hint: "Your email",
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      TravelGooButton(
                        title: "Subscribe",
                        selected: true,
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

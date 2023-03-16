import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';

class WhyChooseUsWidget extends StatelessWidget {
  const WhyChooseUsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
      child: Column(
        children: [
          Text(
            "Why Choose Us ?",
            style: context.textTheme.headlineSmall?.copyWith(
              fontSize: 28,
              color: const Color(0xff3D3E48),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "These popular destinations have a lot to offer",
            style: context.textTheme.bodyMedium?.copyWith(
              color: const Color(0xff3D3E48),
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Assets.icons.icBiShieldCheck.svg(width: 128, height: 128),
                    const SizedBox(height: 20),
                    Text(
                      "Best price guarantee",
                      style: context.textTheme.headlineSmall?.copyWith(
                        color: const Color(0xff3D3E48),
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: const Color(0xff3D3E48),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Assets.icons.icEasyBooking.svg(width: 128, height: 128),
                    const SizedBox(height: 20),
                    Text(
                      "Easy Booking",
                      style: context.textTheme.headlineSmall?.copyWith(
                        color: const Color(0xff3D3E48),
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: const Color(0xff3D3E48),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Assets.icons.icCustomerService.svg(width: 128, height: 128),
                    const SizedBox(height: 20),
                    Text(
                      "Customer Service 24h",
                      style: context.textTheme.headlineSmall?.copyWith(
                        color: const Color(0xff3D3E48),
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: const Color(0xff3D3E48),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

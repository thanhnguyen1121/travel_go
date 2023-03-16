import 'package:flutter/material.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OurBestServiceItemWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subTitle;

  const OurBestServiceItemWidget(
      {Key? key,
      required this.iconPath,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.only(top: 28, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(iconPath, width: 42, height: 42),
          const SizedBox(
            height: 16,
          ),
          Text(
            title,
            style: context.textTheme.headlineMedium?.copyWith(
              fontSize: 36,
              color: Colors.black,
            ),
          ),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: context.textTheme.titleLarge?.copyWith(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

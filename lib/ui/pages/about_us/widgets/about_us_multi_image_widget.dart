import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';

class AboutUsMultiImageWidget extends StatelessWidget {
  const AboutUsMultiImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Assets.images.imgAboutUs04.image(
                  width: 270,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            left: 250,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Assets.images.imgAboutUs02.image(
                    width: 200,
                    height: 326,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          Positioned.fill(
            bottom: 150,
            left: 400,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Assets.images.imgAboutUs03.image(
                    width: 200,
                    height: 326,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

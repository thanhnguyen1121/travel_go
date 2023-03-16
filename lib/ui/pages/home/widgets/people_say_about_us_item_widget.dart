import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/utils/context_extension.dart';

class PeopleSayAboutUsItemWidget extends StatelessWidget {
  const PeopleSayAboutUsItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Assets.images.imgPeopleSayOne.image(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 600,
                height: 220,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        margin: const EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                offset: const Offset(0, 4),
                                blurRadius: 59),
                          ],
                        ),
                        padding: const EdgeInsets.fromLTRB(40, 50, 40, 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit "
                              "ut aliquam, purus sit amet luctus venenatis, "
                              "lectus magna fringilla urna, porttitor",
                              textAlign: TextAlign.center,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: context.textTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              "-Jeo Stanlee",
                              style: context.textTheme.titleLarge
                                  ?.copyWith(fontSize: 22, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned.fill(
                      bottom: 40,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Assets.images.imgPeopleAvt.image(
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

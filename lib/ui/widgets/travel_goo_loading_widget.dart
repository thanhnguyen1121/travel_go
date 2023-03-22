import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class TravelGooLoadingWidget extends StatelessWidget {
  const TravelGooLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Lottie.asset('assets/anims/loading_anim.json', width: 100),
    );
  }
}

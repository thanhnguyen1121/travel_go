import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/about_us/widgets/about_us_multi_image_widget.dart';

class AboutTravelGooWidget extends StatelessWidget {
  const AboutTravelGooWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50).copyWith(bottom: 100),
      child: Row(
        children: [
          const Expanded(
            flex: 3,
            child: AboutUsMultiImageWidget(),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Travelaja.com",
                  style: context.textTheme.headlineSmall
                      ?.copyWith(fontSize: 28, color: const Color(0xff3D3E48)),
                ),
                const SizedBox(height: 20),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet dictum et in feugiat. Platea in diam, est congue. Posuere sapien morbi augue ultrices. Et facilisi orci sollicitudin placerat lacus lacus nibh. Egestas semper massa viverra massa proin in morbi placerat. Pharetra nec, est non integer nisi, ut faucibus. Non, in nam sollicitudin vitae volutpat ac molestie. Turpis pellentesque sit pellentesque id cras lobortis tortor, blandit.",
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: const Color(0xff3D3E48),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Id ac non, semper turpis maecenas. Convallis tempor fringilla quisque arcu, dictum. Vitae cursus vel netus tincidunt vitae. Malesuada velit, at mattis adipiscing quisque tristique id magna. Blandit porta sit nam magna sit. Turpis vestibulum facilisis placerat habitant gravida eget. Lacus pretium, arcu non adipiscing sed faucibus semper eget tempor.",
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: const Color(0xff3D3E48),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

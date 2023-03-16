import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/service/widgets/service_post_item_widget.dart';

class ServicePostWidget extends StatelessWidget {
  const ServicePostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: Row(
        children: const [
          Expanded(child: ServicePostItemWidget()),
          SizedBox(width: 24),
          Expanded(child: ServicePostItemWidget()),
          SizedBox(width: 24),
          Expanded(child: ServicePostItemWidget()),
        ],
      ),
    );
  }
}

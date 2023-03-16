import 'package:flutter/material.dart';
import 'package:flutter_application/utils/context_extension.dart';

class OurTeamMemberWidget extends StatelessWidget {
  final String urlAvt;
  final String name;
  final String work;

  const OurTeamMemberWidget({
    Key? key,
    required this.urlAvt,
    required this.name,
    required this.work,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(
            urlAvt,
            width: 250,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: context.textTheme.titleLarge?.copyWith(
            color: const Color(0xff3D3E48),
          ),
        ),
        Text(
          work,
          style: context.textTheme.bodyMedium?.copyWith(
            color: const Color(0xff3D3E48),
          ),
        ),
      ],
    );
  }
}

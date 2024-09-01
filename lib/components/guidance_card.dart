import 'package:flutter/material.dart';
import 'package:test_app/models/guidance_model.dart';

class GuidanceCard extends StatelessWidget {
  final GuidanceModel guidance;

  const GuidanceCard(this.guidance, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              guidance.imageUrl,
              width: 80,
              height: 80,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  guidance.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  guidance.createdAt,
                  style: const TextStyle(
                    color: Color(0xff7A7E86),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
          const Icon(
            Icons.chevron_right,
            color: Colors.grey,
            size: 30,
          )
        ],
      ),
    );
  }
}

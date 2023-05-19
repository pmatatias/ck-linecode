import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: 15,
      itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: const Color(0xFFe0e0e0),
          highlightColor: const Color(0xFFEEEEEE),
          child: Container(
            margin: const EdgeInsets.only(bottom: 1),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50)),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.amber,
                      height: 18,
                      width: size.width * 0.6,
                    ),
                    const SizedBox(height: 12),
                    Container(
                      color: Colors.amber,
                      height: 12,
                      width: size.width * 0.2,
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

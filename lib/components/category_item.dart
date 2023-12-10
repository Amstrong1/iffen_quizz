import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Color color;
  final String title;
  final String image;
  final double? height;
  final double? width;

  const CategoryItem({
    Key? key,
    required this.color,
    required this.title,
    required this.image,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.only(
        left: 14,
        right: 14,
        top: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: color,
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 10,
                  height: 1.4,
                  letterSpacing: 1,
                ),
            overflow: TextOverflow.fade,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Image.asset(
                    image,
                    // height: 45,
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

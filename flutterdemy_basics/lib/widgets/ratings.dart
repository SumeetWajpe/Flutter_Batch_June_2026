import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int rating;
  final int maxStars;
  final double size;
  final Color color;

  const Rating({
    super.key,
    required this.rating,
    this.maxStars = 5,
    this.size = 24.0,
    this.color = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(maxStars, (index) {
        IconData iconData;

        if (rating >= index + 1) {
          // Full star if the rating is higher or equal to this star position
          iconData = Icons.star;
        } else if (rating > index && rating < index + 1) {
          // Half star if the rating falls strictly within this star step
          iconData = Icons.star_half;
        } else {
          // Empty star if the rating hasn't reached this position
          iconData = Icons.star_border;
        }

        return Icon(iconData, size: size, color: color);
      }),
    );
  }
}

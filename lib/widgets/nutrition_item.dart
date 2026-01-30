import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class NutritionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final String unit;
  final Color color;

  const NutritionItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.unit,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color, size: 22),
        const SizedBox(height: 6),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: value,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              TextSpan(
                text: " $unit",
                style: TextStyle(
                  fontSize: 11,
                  color: color.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
        Text(
          label,
          style: AppTextStyles.bodySmall.copyWith(fontSize: 10),
        ),
      ],
    );
  }
}

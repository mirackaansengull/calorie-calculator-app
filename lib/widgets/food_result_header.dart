import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class FoodResultHeader extends StatelessWidget {
  final String yemekAdi;
  final int toplamKalori;

  const FoodResultHeader({
    super.key,
    required this.yemekAdi,
    required this.toplamKalori,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.primary.withOpacity(0.2),
                AppColors.primaryLight.withOpacity(0.1),
              ],
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(
            Icons.fastfood_rounded,
            color: AppColors.primary,
            size: 28,
          ),
        ),
        const SizedBox(width: 14),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                yemekAdi,
                style: AppTextStyles.cardTitle,
              ),
              const SizedBox(height: 4),
              Text(
                "Besin Analizi",
                style: AppTextStyles.bodySmall,
              ),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: AppDecorations.calorieBadgeDecoration,
          child: Column(
            children: [
              Text(
                "$toplamKalori",
                style: AppTextStyles.totalCalorie.copyWith(fontSize: 20),
              ),
              Text(
                "kcal",
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textOnPrimary.withOpacity(0.9),
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

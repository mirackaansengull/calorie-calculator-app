import 'package:flutter/material.dart';
import '../models/food_data.dart';
import '../theme/app_theme.dart';

class IngredientRow extends StatelessWidget {
  final Ingredient item;

  const IngredientRow({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.divider.withOpacity(0.5)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.accent.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.lunch_dining,
              size: 20,
              color: AppColors.accent,
            ),
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Text(
              item.isim,
              style: AppTextStyles.bodyLarge,
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.calorie.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.local_fire_department,
                      size: 14,
                      color: AppColors.calorie.withOpacity(0.8),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "${item.kalori} kcal",
                      style: AppTextStyles.calorieValue,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.protein.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.fitness_center,
                      size: 12,
                      color: AppColors.protein.withOpacity(0.8),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "${item.protein}g",
                      style: AppTextStyles.proteinValue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

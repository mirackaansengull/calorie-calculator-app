import 'package:flutter/material.dart';
import '../models/food_data.dart';
import '../theme/app_theme.dart';
import 'nutrition_item.dart';

class NutritionSummary extends StatelessWidget {
  final int toplamKalori;
  final List<Ingredient> malzemeler;

  const NutritionSummary({
    super.key,
    required this.toplamKalori,
    required this.malzemeler,
  });

  @override
  Widget build(BuildContext context) {
    double totalProtein = 0;
    for (var m in malzemeler) {
      totalProtein += m.protein;
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.05),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.primary.withOpacity(0.1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NutritionItem(
            icon: Icons.local_fire_department,
            label: "Kalori",
            value: "$toplamKalori",
            unit: "kcal",
            color: AppColors.calorie,
          ),
          Container(
            height: 40,
            width: 1,
            color: AppColors.divider,
          ),
          NutritionItem(
            icon: Icons.fitness_center,
            label: "Protein",
            value: totalProtein.toStringAsFixed(1),
            unit: "g",
            color: AppColors.protein,
          ),
          Container(
            height: 40,
            width: 1,
            color: AppColors.divider,
          ),
          NutritionItem(
            icon: Icons.inventory_2,
            label: "Malzeme",
            value: "${malzemeler.length}",
            unit: "adet",
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/food_data.dart';
import '../theme/app_theme.dart';
import 'food_result_header.dart';
import 'ingredient_row.dart';
import 'nutrition_summary.dart';

class FoodResultCard extends StatelessWidget {
  final FoodData result;

  const FoodResultCard({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: Container(
        decoration: AppDecorations.cardDecoration,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FoodResultHeader(
                yemekAdi: result.yemekAdi,
                toplamKalori: result.toplamKalori,
              ),

              const SizedBox(height: 16),

              NutritionSummary(
                toplamKalori: result.toplamKalori,
                malzemeler: result.malzemeler,
              ),

              const SizedBox(height: 16),
              const Divider(),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.primaryLight.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.restaurant,
                        size: 20,
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      "Malzemeler",
                      style: AppTextStyles.sectionTitle.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.textSecondary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "100g Değerleri",
                        style: AppTextStyles.bodySmall.copyWith(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),

              ...result.malzemeler.map((m) => IngredientRow(item: m)),

              const SizedBox(height: 16),
              const Divider(),

              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.auto_awesome,
                      size: 14,
                      color: AppColors.textSecondary.withOpacity(0.6),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      "Değerler yapay zeka tarafından tahmin edilmiştir",
                      style: AppTextStyles.caption,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

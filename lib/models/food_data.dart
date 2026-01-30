class Ingredient {
  final String isim;
  final int kalori;
  final double protein;

  Ingredient({required this.isim, required this.kalori, required this.protein});

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      isim: json['isim'] ?? "Bilinmiyor",
      kalori: (json['kalori'] ?? 0).toInt(),
      protein: (json['protein'] ?? 0.0).toDouble(),
    );
  }
}

class FoodData {
  final String yemekAdi;
  final int toplamKalori;
  final List<Ingredient> malzemeler;

  FoodData({required this.yemekAdi, required this.toplamKalori, required this.malzemeler});

  factory FoodData.fromJson(Map<String, dynamic> json) {
    return FoodData(
      yemekAdi: json['yemek_adi'] ?? "Bilinmiyor",
      toplamKalori: json['toplam_kalori'] ?? (json['kalori'] ?? 0),
      malzemeler: (json['malzemeler'] as List?)
              ?.map((i) => Ingredient.fromJson(i))
              .toList() ?? [],
    );
  }
}
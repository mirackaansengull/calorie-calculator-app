import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../models/food_data.dart';
import 'progress_image.dart'; 

class FoodController extends ChangeNotifier {
  final FoodAnalysisService _service = FoodAnalysisService();

  FoodData? result;
  bool isLoading = false;
  Uint8List? selectedImageBytes;
  String? errorMessage;

  Future<void> handleAnalysis(ImageSource source) async {
    isLoading = true;
    errorMessage = null;
    result = null;
    notifyListeners();

    try {
      final response = await _service.analyzePhoto(source: source);
      
      if (response.data != null) {
        result = response.data;
        selectedImageBytes = response.imageBytes;
      } else if (response.imageBytes != null) {
        selectedImageBytes = response.imageBytes;
        errorMessage = "Yemek analiz edilemedi. Lütfen tekrar deneyin.";
      }
    } catch (e) {
      debugPrint("Analiz Hatası: $e");
      errorMessage = "Bir hata oluştu: ${e.toString()}";
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  void clearError() {
    errorMessage = null;
    notifyListeners();
  }
}
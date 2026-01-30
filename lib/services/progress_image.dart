import 'dart:convert';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import '../models/food_data.dart';
import 'gemini.dart';
import 'image_picker.dart';

class FoodAnalysisService {
  final GeminiService _geminiService = GeminiService();

  Future<({FoodData? data, Uint8List? imageBytes})> analyzePhoto({required ImageSource source}) async {
    Uint8List? bytes;
    try {
      final XFile? photo = await ImagePickerHelper.pickImage(source);
      
      if (photo == null) return (data: null, imageBytes: null);

      bytes = await photo.readAsBytes();
      final String? jsonResponse = await _geminiService.analyzeImage(bytes);

      if (jsonResponse != null) {
        final cleanJson = jsonResponse
            .replaceAll('```json', '')
            .replaceAll('```', '')
            .trim();

        final Map<String, dynamic> decoded = jsonDecode(cleanJson);
        return (
          data: FoodData.fromJson(decoded), 
          imageBytes: bytes
        );
      }
      return (data: null, imageBytes: bytes);
    } catch (e) {
      print("Analiz servisi hatası: $e");
      if (bytes != null) {
        return (data: null, imageBytes: bytes);
      }
      rethrow;
    }
  }
}
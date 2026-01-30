import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  
  final _model = GenerativeModel(
    model: 'gemini-3-flash-preview', 
    apiKey: const String.fromEnvironment('GEMINI_API_KEY'),
  );

  Future<String?> analyzeImage(Uint8List imageBytes) async {
    
    const String keyCheck = String.fromEnvironment('GEMINI_API_KEY');
    print("Sistemden okunan API Key: $keyCheck");

    if (keyCheck.isEmpty) {
      print("HATA: API Key boş! launch.json veya dart-define ayarlarını kontrol et.");
    }

    try {
      final prompt = TextPart(
        "Bu resimdeki yemeği analiz et. İçindeki ana malzemeleri (sebze, et vb.) tek tek belirle. "
  "Her bir malzemenin 100 gramındaki yaklaşık kalori ve protein değerini hesapla. "
  "Son olarak yemeğin porsiyonuna göre toplam ortalama kaloriyi ver. "
  "Yanıtı SADECE şu JSON formatında döndür: "
  "{"
  "  'yemek_adi': '...', "
  "  'toplam_kalori': 0, "
  "  'malzemeler': ["
  "    {'isim': 'Tavuk', 'kalori': 165, 'protein': 31.0},"
  "    {'isim': 'Bezelye', 'kalori': 81, 'protein': 5.0}"
  "  ]"
  "}"
      );

      final dataPart = DataPart('image/jpeg', imageBytes);

      final response = await _model.generateContent([
        Content.multi([prompt, dataPart])
      ]);

      
      print("Gemini Yanıtı: ${response.text}");

      return response.text;
    } catch (e) {
      print("Gemini API Hatası: $e");
      return null;
    }
  }
}
# Kalori Hesaplama Uygulaması

Yapay zeka destekli yemek fotoğrafı analiz ederek kalori ve besin değerlerini hesaplayan Flutter uygulaması.

## Özellikler

- Kamera veya galeriden yemek fotoğrafı seçme
- Google Gemini AI ile otomatik yemek tanıma
- Yemekteki malzemeleri tespit etme
- Her malzemenin kalori ve protein değerlerini hesaplama
- Toplam besin değerlerini gösterme
- Modern ve kullanıcı dostu arayüz


## Kurulum

### Gereksinimler

- Flutter SDK (3.0+)
- Dart SDK (3.0+)
- Google Gemini API Key

### Adımlar

1. Projeyi klonlayın:
```bash
git clone https://github.com/kullanici/calorie-calculator-app.git
cd calorie-calculator-app
```

2. Bağımlılıkları yükleyin:
```bash
flutter pub get
```

3. Uygulamayı çalıştırın (API key ile):
```bash
flutter run --dart-define=GEMINI_API_KEY=YOUR_API_KEY
```

## Build

### Android APK
```bash
flutter build apk --release --dart-define=GEMINI_API_KEY=YOUR_API_KEY
```

### Android App Bundle
```bash
flutter build appbundle --release --dart-define=GEMINI_API_KEY=YOUR_API_KEY
```

### iOS
```bash
flutter build ios --release --dart-define=GEMINI_API_KEY=YOUR_API_KEY
```

## Proje Yapısı

```
lib/
├── main.dart                 # Uygulama giriş noktası
├── models/
│   └── food_data.dart        # Yemek ve malzeme veri modelleri
├── services/
│   ├── foodController.dart   # Yemek analiz controller
│   ├── gemini.dart           # Gemini AI servisi
│   ├── image_picker.dart     # Resim seçme yardımcısı
│   └── progress_image.dart   # Analiz servisi
├── theme/
│   └── app_theme.dart        # Uygulama teması ve stilleri
├── views/
│   └── home_view.dart        # Ana ekran
└── widgets/
    ├── food_result_card.dart # Sonuç kartı
    ├── food_result_header.dart
    ├── ingredient_row.dart   # Malzeme satırı
    ├── nutrition_item.dart   # Besin değeri öğesi
    └── nutrition_summary.dart # Besin özeti
```

## Kullanılan Teknolojiler

- **Flutter** - Cross-platform UI framework
- **Google Generative AI** - Gemini AI entegrasyonu
- **Image Picker** - Kamera ve galeri erişimi

## API Anahtarı

Bu uygulama Google Gemini API kullanmaktadır. API anahtarı almak için:

1. [Google AI Studio](https://makersuite.google.com/app/apikey) adresine gidin
2. Yeni bir API anahtarı oluşturun
3. Anahtarı `--dart-define=GEMINI_API_KEY=xxx` parametresi ile kullanın



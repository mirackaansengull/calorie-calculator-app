import 'package:flutter/material.dart';

/// Uygulama Renk Paleti
class AppColors {
  AppColors._();
  // Ana Renkler
  static const Color primary = Color(0xFF2E7D32);       
  static const Color primaryLight = Color(0xFF60AD5E);  
  static const Color primaryDark = Color(0xFF005005);   
  
  // Aksan Renkler
  static const Color accent = Color(0xFFFF6D00);        
  static const Color accentLight = Color(0xFFFF9E40);   
  static const Color accentDark = Color(0xFFC43C00);    
  
  // Kalori & Protein Renkleri
  static const Color calorie = Color(0xFFE53935);       
  static const Color protein = Color(0xFF1E88E5);       
  static const Color carbs = Color(0xFFFFB300);        
  
  // Arka Plan Renkleri
  static const Color background = Color(0xFFF5F5F5);    
  static const Color surface = Color(0xFFFFFFFF);       
  static const Color cardGradientStart = Color(0xFFFFFFFF);
  static const Color cardGradientEnd = Color(0xFFFFF3E0);  
  
  // Metin Renkleri
  static const Color textPrimary = Color(0xFF212121);   
  static const Color textSecondary = Color(0xFF757575); 
  static const Color textHint = Color(0xFFBDBDBD);      
  static const Color textOnPrimary = Color(0xFFFFFFFF);
  
  // Hata & Başarı
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  
  // Diğer
  static const Color divider = Color(0xFFE0E0E0);
  static const Color shadow = Color(0x1A000000);
}

/// Uygulama Metin Stilleri
class AppTextStyles {
  // Başlıklar
  static const TextStyle appBarTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.textOnPrimary,
    letterSpacing: 0.5,
  );
  
  static const TextStyle cardTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
    letterSpacing: 0.3,
  );
  
  static const TextStyle sectionTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textSecondary,
  );
  
  // Gövde Metinleri
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
  
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );
  
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );
  
  // Değer Metinleri
  static const TextStyle calorieValue = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.calorie,
  );
  
  static const TextStyle proteinValue = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.protein,
  );
  
  static const TextStyle totalCalorie = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.textOnPrimary,
  );
  
  // Hint & Caption
  static const TextStyle hint = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.textHint,
  );
  
  static const TextStyle caption = TextStyle(
    fontSize: 11,
    fontStyle: FontStyle.italic,
    color: AppColors.textSecondary,
  );
  
  static const TextStyle error = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.error,
  );
}

/// Uygulama Dekorasyonları
class AppDecorations {
  // Kart Dekorasyonu
  static BoxDecoration cardDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [AppColors.cardGradientStart, AppColors.cardGradientEnd],
    ),
    boxShadow: [
      BoxShadow(
        color: AppColors.shadow,
        blurRadius: 12,
        offset: const Offset(0, 4),
      ),
    ],
  );
  
  // Resim Container Dekorasyonu
  static BoxDecoration imageContainerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    border: Border.all(color: AppColors.primary.withOpacity(0.3), width: 2),
    boxShadow: [
      BoxShadow(
        color: AppColors.primary.withOpacity(0.15),
        blurRadius: 15,
        offset: const Offset(0, 5),
      ),
    ],
  );
  
  // Kalori Badge Dekorasyonu
  static BoxDecoration calorieBadgeDecoration = BoxDecoration(
    gradient: const LinearGradient(
      colors: [AppColors.accent, AppColors.accentLight],
    ),
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(
        color: AppColors.accent.withOpacity(0.3),
        blurRadius: 8,
        offset: const Offset(0, 3),
      ),
    ],
  );
  
  // Bottom Sheet Dekorasyonu
  static const RoundedRectangleBorder bottomSheetShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
  );
}

/// Uygulama Teması
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      
      // Renk Şeması
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryLight,
        secondary: AppColors.accent,
        secondaryContainer: AppColors.accentLight,
        surface: AppColors.surface,
        error: AppColors.error,
        onPrimary: AppColors.textOnPrimary,
        onSecondary: AppColors.textOnPrimary,
        onSurface: AppColors.textPrimary,
        onError: AppColors.textOnPrimary,
      ),
      
      // Scaffold Arka Plan
      scaffoldBackgroundColor: AppColors.background,
      
      // AppBar Teması
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textOnPrimary,
        titleTextStyle: AppTextStyles.appBarTitle,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      
      // FAB Teması
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.accent,
        foregroundColor: AppColors.textOnPrimary,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      
      // Kart Teması
      cardTheme: CardThemeData(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      ),
      
      // Elevated Button Teması
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textOnPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 4,
        ),
      ),
      
      // Divider Teması
      dividerTheme: const DividerThemeData(
        color: AppColors.divider,
        thickness: 1,
        space: 20,
      ),
      
      // ListTile Teması
      listTileTheme: ListTileThemeData(
        iconColor: AppColors.primary,
        textColor: AppColors.textPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      
      // BottomSheet Teması
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.surface,
        shape: AppDecorations.bottomSheetShape,
        elevation: 16,
      ),
      
      // Progress Indicator Teması
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary,
        linearTrackColor: AppColors.primaryLight,
      ),
      
      // Icon Teması
      iconTheme: const IconThemeData(
        color: AppColors.primary,
        size: 24,
      ),
    );
  }
}

/// Uygulama Sabitleri
class AppConstants {
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;
  
  static const double borderRadius = 20.0;
  static const double smallBorderRadius = 12.0;
  
  static const double imageHeight = 280.0;
  static const double iconSizeLarge = 100.0;
  static const double iconSizeMedium = 48.0;
}

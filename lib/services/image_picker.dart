import 'package:image_picker/image_picker.dart';

class ImagePickerHelper {
  static final ImagePicker _picker = ImagePicker();

  static Future<XFile?> pickImage(ImageSource source) async {
    try {
      return await _picker.pickImage(
        source: source,
        maxWidth: 1024,
        imageQuality: 80,
      );
    } catch (e) {
      print("Resim seçme hatası ($source): $e");
      return null;
    }
  }
}
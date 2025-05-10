import 'package:advanced_ecommerce/core/services/shared_pref/pref_keys.dart';
import 'package:advanced_ecommerce/core/services/shared_pref/shared_pref.dart';

class FontFamilyHelper {
  FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String goLocalizedFontFamily() {
    
    final currentLang = SharedPref().getString(PrefKeys.language);
    if (currentLang == "ar") {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}

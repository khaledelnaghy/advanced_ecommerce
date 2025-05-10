class FontFamilyHelper {
  FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String goLocalizedFontFamily() {
    // todo : SharedPreferences
    final currentLang = "ar";
    if (currentLang == "ar") {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}

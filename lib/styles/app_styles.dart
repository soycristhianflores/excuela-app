import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Constantes relacionadas con el diseño de la aplicación
class DesignConstants {
  // ... Constantes de diseño ...
}

class AppColors {
  // Colores primarios
  static const orange50 = Color(0xFFF7A690);
  static const orange100 = Color(0xFFF6957B);
  static const orange200 = Color(0xFFF58465);
  static const orange300 = Color(0xFFF3724F);
  static const orange400 = Color(0xFFF26139);
  static const orange500 = Color(0xFFFC4C02);
  static const orange600 = Color(0xFFD84720);
  static const orange700 = Color(0xFFA83719);
  static const orange800 = Color(0xFF782812);
  static const orange900 = Color(0xFF48180A);
  static const blue50 = Color(0xFF8EA1C4);
  static const blue100 = Color(0xFF778EB8);
  static const blue200 = Color(0xFF617BAC);
  static const blue300 = Color(0xFF4A68A1);
  static const blue400 = Color(0xFF345595);
  static const blue500 = Color(0xFF1D4289);
  static const blue600 = Color(0xFF1A3B7B);
  static const blue700 = Color(0xFF142E60);
  static const blue800 = Color(0xFF0f2145);
  static const blue900 = Color(0xFF091429);

  // Colores secundarios
  static const lightBlue = Color(0xFF00B5E2);
  static MaterialColor whiteMat = const MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  static MaterialColor orangeMat = const MaterialColor(
    0xFFF26139,
    <int, Color>{
      50: Color(0xFFF7A690),
      100: Color(0xFFF6957B),
      200: Color(0xFFF58465),
      300: Color(0xFFF3724F),
      400: Color(0xFFF26139),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  static const lightGray = Color(0xFF63666A);
  static const darkGray = Color(0xFF3E3E41);
  // Terciary
  static const red = Color(0xFFF93822);
  static const brown = Color(0xFF512F2E);
  static const lighterGray = Color(0xFF97979A);
  static const mustard = Color(0xFFD29F13);
  static const darkGreen = Color(0xFF00AF66);
  static const yellow = Color(0xFFFDDA25);
  static const golden = Color(0xffD29F13);
  static const lightGreen = Color(0xFFA4D65E);
  // Background colors
  static const grayBg = Color(0xFFFBFBFB);
  static const garkGrayBg = Color(0xFFFBF7F6);
  static const lightGrayBg = Color(0xFFF5F5F5);
  static const white = Colors.white;
}

class Times {
  // Constantes de duración para animaciones
  static const Duration fastest = Duration(milliseconds: 100);
  static const Duration fast = Duration(milliseconds: 250);
  static const Duration medium = Duration(milliseconds: 350);
  static const Duration slow = Duration(milliseconds: 700);
  static const Duration slower = Duration(milliseconds: 1000);
}

class Sizes {
  // Tamaños predefinidos
  static double hitScale = 1;
  static double get hit => 40 * hitScale;
  static const double smallPhone = 500;
  static const double largePhone = 700;
}

class IconSizes {
  static const double scale = 1;
  static const double med = 24;
}

class Insets {
  // Márgenes predefinidos
  static const double scale = 1;
  static const double offsetScale = 1;
  static const double xsm = 3 * scale;
  static const double sm = 10 * scale;
  static const double md = 16 * offsetScale;
  static const double lg = 20 * scale;
  static const double xlg = 40 * scale;
  static const double none = 0 * scale;

  static const EdgeInsets edgeExtraSmall = EdgeInsets.all(xsm);
  static const EdgeInsets edgeSmall = EdgeInsets.all(sm);
  static const EdgeInsets edgeOffset = EdgeInsets.all(md);
  static const EdgeInsets edgeMedium = EdgeInsets.all(md);
  static const EdgeInsets edgeLarge = EdgeInsets.all(lg);
  static const EdgeInsets edgeXlarge = EdgeInsets.all(xlg);
  static const EdgeInsets noEdge = EdgeInsets.all(none);
}

class Corners {
  // Radios de borde predefinidos
  static const double none = 0;
  static const BorderRadius noneBorder = BorderRadius.all(noneRadius);
  static const Radius noneRadius = Radius.circular(none);

  static const double sm = 3;
  static const BorderRadius smBorder = BorderRadius.all(smRadius);
  static const Radius smRadius = Radius.circular(sm);

  static const double med = 5;
  static const BorderRadius medBorder = BorderRadius.all(medRadius);
  static const Radius medRadius = Radius.circular(med);

  static const double lg = 8;
  static const BorderRadius lgBorder = BorderRadius.all(lgRadius);
  static const Radius lgRadius = Radius.circular(lg);
}

class Strokes {
  // Grosor de trazo predefinido
  static const double thin = 1;
  static const double thick = 4;
}

class Shadows {
  // Sombras predefinidas
  static List<BoxShadow> get button => [
        const BoxShadow(
          offset: Offset(3, 3),
          color: AppColors.darkGray,
          blurRadius: 0.0,
          spreadRadius: 0.0,
        )
      ];
}

class FontSizes {
  // Tamaños predefinidos de fuentes
  static double get scale => 1;
  static double get s10 => 10 * scale;
  static double get s14 => 14 * scale;
  static double get s16 => 16 * scale;
  static double get s20 => 20 * scale;
  static double get s24 => 24 * scale;
  static double get s34 => 34 * scale;
}

// class Fonts {
//   static const String openSans = "OpenSans";
// }

class TextStyles {
  // Estilos de texto predefinidos
  static TextStyle get openSans => GoogleFonts.openSans();
  static TextStyle get exo2 => GoogleFonts.exo2();
  static TextStyle get poppins => GoogleFonts.poppins();

  static TextStyle h1 = poppins.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s20,
      color: AppColors.darkGray);
  static TextStyle h2 = poppins.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s16,
      color: AppColors.darkGray);

  static TextStyle titles =
      exo2.copyWith(fontWeight: FontWeight.w500, fontSize: FontSizes.s20);
  static TextStyle base = openSans.copyWith(fontSize: FontSizes.s24);
  static TextStyle input = openSans.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s16,
      color: AppColors.darkGray);
  static TextStyle secondaryText = openSans.copyWith(
      fontSize: FontSizes.s14,
      color: AppColors.darkGray,
      fontWeight: FontWeight.w400);
  static TextStyle tertiaryText = exo2.copyWith(
      fontSize: FontSizes.s14,
      fontWeight: FontWeight.w600,
      color: AppColors.darkGray);
  static TextStyle labelXS = openSans.copyWith(fontSize: FontSizes.s10);
  static TextStyle formControls = exo2.copyWith(
    fontSize: FontSizes.s16,
    fontWeight: FontWeight.w500,
    color: AppColors.darkGray,
  );
  static TextStyle get formControls2 =>
      exo2.copyWith(fontSize: FontSizes.s16, fontWeight: FontWeight.w500);

  static TextStyle get h3 =>
      h1.copyWith(fontSize: FontSizes.s14, letterSpacing: -.05, height: 1.29);
  static TextStyle get title1 => openSans.copyWith(
      fontWeight: FontWeight.bold, fontSize: FontSizes.s16, height: 1.31);
  static TextStyle get title2 => title1.copyWith(
      fontWeight: FontWeight.w500, fontSize: FontSizes.s14, height: 1.36);
  static TextStyle get body1 => openSans.copyWith(
      fontWeight: FontWeight.normal, fontSize: FontSizes.s14, height: 1.71);
  static TextStyle get body2 =>
      body1.copyWith(fontSize: FontSizes.s14, height: 1.5, letterSpacing: .2);
  static TextStyle get body3 => body1.copyWith(
      fontSize: FontSizes.s14, height: 1.5, fontWeight: FontWeight.bold);
  static TextStyle get callout1 => openSans.copyWith(
      fontWeight: FontWeight.w800,
      fontSize: FontSizes.s10,
      height: 1.17,
      letterSpacing: .5);
  static TextStyle get callout2 =>
      callout1.copyWith(fontSize: FontSizes.s10, height: 1, letterSpacing: .25);
  static TextStyle get caption => openSans.copyWith(
      fontWeight: FontWeight.w500, fontSize: FontSizes.s14, height: 1.36);
}

extension TextStyleExt on TextStyle {
  TextStyle size(double value) => copyWith(fontSize: value);
  TextStyle setColor(Color? color) => copyWith(color: color);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get semibold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get decorat => copyWith(decoration: TextDecoration.lineThrough);
}

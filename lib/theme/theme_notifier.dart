import 'package:ebook/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import 'package:fregies/constants/color.dart';

// class ThemeClass {
//   //static late ThemeMode currentTheme = ThemeMode.light;
//   static final ValueNotifier<ThemeMode> themeNotifier =
//       ValueNotifier(ThemeMode.light);

//   static ThemeData lightTheme = ThemeData(
//       fontFamily: 'Poppins',
//       scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
//       colorScheme: ColorScheme.dark()

//       // Color.fromARGB(100, 11, 13, 38).withOpacity(1.0),
//       // secondaryHeaderColor: Colors.white,
//       // backgroundColor: Colors.white,
//       //primarySwatch: ColorSwatchzzz(0xFF363167),
//       // hintColor: Colors.black.withOpacity(0.4),
//       // primaryColor: Colors.green,
//       // splashColor: Colors.transparent,
//       // appBarTheme: const AppBarThseme(
//       //   backgroundColor: Colors.transparent,
//       //   foregroundColor: Colors.transparent,
//       //   elevation: 0,
//       //   iconTheme: IconThemeData(color: Colors.black),
//       //   systemOverlayStyle: SystemUiOverlayStyle(
//       //     statusBarColor: Colors.transparent,
//       //     statusBarIconBrightness: Brightness.dark,
//       //   ),
//       // ),
//       // brightness: Brightness.light,
//       // textTheme: TextTheme(
//       //   bodyText1: TextStyle(color: Colors.white.withOpacity(0.5)),
//       //   headline6: const TextStyle(
//       //       color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
//       // ),
//       );

//   static ThemeData darkTheme = ThemeData(
//       fontFamily: 'Poppins',
//       scaffoldBackgroundColor: Colors.grey.shade900,
//       colorScheme: ColorScheme.light()
//       // backgroundColor: scaffoldBackgroundColorDark,
//       // secondaryHeaderColor: Colors.white,
//       // hintColor: const Color(0xffA3A3A3),
//       // primaryColor: white,
//       // splashColor: Colors.transparent,
//       // appBarTheme: const AppBarTheme(
//       //     backgroundColor: Colors.transparent,
//       //     foregroundColor: Colors.transparent,
//       //     elevation: 0,
//       //     iconTheme: IconThemeData(color: white)),
//       // brightness: Brightness.dark,
//       // textTheme: const TextTheme(
//       //   bodyText1: TextStyle(color: Colors.white),
//       //   headline6: TextStyle(
//       //       color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
//       //),
//       );
// }

class Themeprovider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDarkMode => themeMode == ThemeMode.dark;
  void toggletheme(bool ison) {
    themeMode = ison ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class ThemeClass {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: iconwhite),
      backgroundColor: Colors.black.withOpacity(0.9),
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: iconblack),
      backgroundColor: mywhite,
    ),
  );
}

// Color getColor(Set<MaterialState> states) {
//   const Set<MaterialState> interactiveStates = <MaterialState>{
//     MaterialState.pressed,
//     MaterialState.hovered,
//     MaterialState.focused,
//   };
//   if (states.any(interactiveStates.contains)) {
//     return Colors.blue;
//   }
//   return Colors.red;
// }

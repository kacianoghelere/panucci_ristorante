import 'package:flutter/material.dart';
import 'package:panucci_ristorante/screens/home.dart';
import 'package:panucci_ristorante/themes/app_colors.dart';

void main() {
  runApp(const PanucciRistoranteApp());
}

class PanucciRistoranteApp extends StatelessWidget {
  const PanucciRistoranteApp({ super.key });

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Panucci Ristorante",
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorSchemeSeed: Colors.purple,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppColors.buttonStyle
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16),
          titleSmall: TextStyle(fontSize: 32, fontFamily: 'Caveat')
        ),
        useMaterial3: true
      ),
      home: const Home()
    );
  }
}

import 'package:ebook/screens/mainhomepage.dart';
import 'package:ebook/size_config.dart';
import 'package:ebook/theme/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
//https://github.com/bmdavis419/the-better-backend
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      builder: (context, _) {
        final themeProvider = Provider.of<Themeprovider>(context);
        // SizeConfig().init(context);
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            //title: 'Smart Bet',s
            themeMode: themeProvider.themeMode,
            theme: ThemeClass.lightTheme,
            darkTheme: ThemeClass.darkTheme,
            home: mainhomepage());
      },
      create: (BuildContext context) => Themeprovider());
}

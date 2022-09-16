import 'package:flutter/material.dart';
import 'package:ebook/theme/theme_notifier.dart';
import 'package:provider/provider.dart';

class themebutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<Themeprovider>(context);
    return Switch.adaptive(
        value: themeProvider.isDarkMode,
        onChanged: (value) {
          final provider = Provider.of<Themeprovider>(context, listen: false);
          provider.toggletheme(value);
        });
  }
}

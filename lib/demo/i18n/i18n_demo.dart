import 'package:flutter/material.dart';
// import 'package:hello_demo/demo/i18n/map/hello_demo_localizations.dart.dart';
import 'package:hello_demo/demo/i18n/intl/hello_demo_localizations.dart';
import 'package:hello_demo/demo/i18n/intl/hello_demo_localizations.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(locale.toString()),
            Text(
              // Localizations.of(context, HelloDemoLocalizations).title,
              HelloDemoLocalizations.of(context).greet('today'),
              style: Theme.of(context).textTheme.title,
            )
          ],
        ),
      ),
    );
  }
}

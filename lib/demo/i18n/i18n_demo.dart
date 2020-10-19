import 'package:flutter/material.dart';
import 'package:hello_demo/demo/i18n/map/hello_demo_localizations.dart.dart';

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
              Localizations.of(context, HelloDemoLocalizations).title,
              style: Theme.of(context).textTheme.title,
            )
          ],
        ),
      ),
    );
  }
}

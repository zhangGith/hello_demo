import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'hello_demo_messages_all.dart';

class HelloDemoLocalizations {
  String get title => Intl.message(
        'hello',
        name: 'title',
        desc: 'demo localizations',
      );
  static HelloDemoLocalizations of(BuildContext context) {
    return Localizations.of<HelloDemoLocalizations>(
        context, HelloDemoLocalizations);
  }

  static Future<HelloDemoLocalizations> load(Locale locale) {
    // TODO: implement load
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localName = Intl.canonicalizedLocale(name);

    return initializeMessages(localName).then((value) {
      Intl.defaultLocale = localName;
      return HelloDemoLocalizations();
    });
  }

  String greet(String name) => Intl.message(
        'hello $name',
        name: 'greet',
        desc: 'greet someone',
        args: [name],
      );
}

class HelloDemoLocalizationsDelegate
    extends LocalizationsDelegate<HelloDemoLocalizations> {
  HelloDemoLocalizationsDelegate();

  @override
  Future<HelloDemoLocalizations> load(Locale locale) {
    // TODO: implement load
    return HelloDemoLocalizations.load(locale);
  }

  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return true;
  }

  @override
  bool shouldReload(
      covariant LocalizationsDelegate<HelloDemoLocalizations> old) {
    // TODO: implement shouldReload
    return false;
  }
}

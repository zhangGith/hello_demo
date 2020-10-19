import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class HelloDemoLocalizations {
  final Locale locale;

  HelloDemoLocalizations(this.locale);
  static Map<String, Map<String, String>> _localized = {
    'en' : {
      'title' : 'hello',
    },
    'zh' : {
      'title' : '您好'，
    }
  };

  String get title {
    return _localized[locale.languageCode]['title'];
  }
}

class HelloDemoLocalizationsDelegate extends LocalizationsDelegate<HelloDemoLocalizations> {
  HelloDemoLocalizationsDelegate();

  @override
  Future<HelloDemoLocalizations> load(Locale locale) {
    // TODO: implement load
    return SynchronousFuture<HelloDemoLocalizations>(
      HelloDemoLocalizations(locale)
    );
  }

  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return true;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<HelloDemoLocalizations> old) {
    // TODO: implement shouldReload
    return false;
  }
  
}

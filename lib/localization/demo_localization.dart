import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DemoLocalization{
  final Locale locale;

  DemoLocalization(this.locale);
  static DemoLocalization of(BuildContext context) {
    return Localizations.of<DemoLocalization>(context, DemoLocalization);
  }

  // ignore: unused_field
  Map<String,String>_localizedValues;

  Future load() async {
    String jsonStringVaues =
    await rootBundle.loadString('lib/lang/${locale.languageCode}.json');


    Map<String,dynamic> mappedJson= json.decode(jsonStringVaues);

    _localizedValues= mappedJson.map(key ,value)=>MapEntry(key,value);
  }
  
  String getTranslatedValue(String key){
    return _localizedValues[key];
  }

  static const LocalizationsDelegate<DemoLocalization> delegate = _DemoLocalizationDelegate();
}
class _DemoLocalizationDelegate extends LocalizationsDelegate<DemoLocalization>{
  
      const _DemoLocalizationDelegate();
  @override
  bool isSupported(Locale locale) {
      return ['en','ta'].contains(locale.languageCode);
    }
  
    @override
    Future<DemoLocalization> load(Locale locale) async{
      DemoLocalization localization = new DemoLocalization(locale);
      await localization.load();
      return localization;
    }
  
    @override
    bool shouldReload(_DemoLocalizationDelegate old) => false;
  }


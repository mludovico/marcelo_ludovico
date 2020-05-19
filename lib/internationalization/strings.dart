import 'package:flutter/material.dart';

class Strings {

  static Locale locale;

  Strings(){
    if(locale == null)
      locale = Locale('pt');
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Marcelo Ludovico',
      'langMenuPt': 'Brazilian Portuguese',
      'langMenuEn': 'US English',
      'langMenuIt': 'Italian',
      'homeTabAbout': 'About me',
      'homeTabSchool': 'Education',
      'homeTabExperience': 'Experience',
      'homeTabContact': 'Hire me!',
    },
    'it': {
      'title': 'Marcelo Ludovico',
      'langMenuPt': 'Portoghese Brasiliano',
      'langMenuEn': 'Inglese Stati Uniti',
      'langMenuIt': 'Italiano',
      'homeTabAbout': 'Su di me',
      'homeTabSchool': 'Formazione',
      'homeTabExperience': 'Esperienze',
      'homeTabContact': 'Assumimi!',
    },
    'pt': {
      'title': 'Marcelo Ludovico',
      'langMenuPt': 'Português do Brasil',
      'langMenuEn': 'Inglês EUA',
      'langMenuIt': 'Italiano',
      'homeTabAbout': 'Sobre mim',
      'homeTabSchool': 'Formação',
      'homeTabExperience': 'Experiência',
      'homeTabContact': 'Contrate-me!',
    },
  };

  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }

  String get langMenuPt{
    return _localizedValues[locale.languageCode]['langMenuPt'];
  }

  String get langMenuEn{
    return _localizedValues[locale.languageCode]['langMenuEn'];
  }

  String get langMenuIt{
    return _localizedValues[locale.languageCode]['langMenuIt'];
  }

  String get homeTabAbout{
    return _localizedValues[locale.languageCode]['homeTabAbout'];
  }

  String get homeTabSchool{
    return _localizedValues[locale.languageCode]['homeTabSchool'];
  }

  String get homeTabExperience{
    return _localizedValues[locale.languageCode]['homeTabExperience'];
  }

  String get homeTabContact{
    return _localizedValues[locale.languageCode]['homeTabContact'];
  }

}
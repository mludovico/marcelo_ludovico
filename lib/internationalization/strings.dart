import 'package:flutter/material.dart';

class Strings {

  static Locale locale;
  static int _age = (DateTime.now().difference(DateTime.parse('1981-03-10')).inDays/365).floor();

  Strings(){
    if(locale == null)
      locale = Locale('pt');
  }

  static Map<String, Map<String, dynamic>> _localizedValues = {
    'en': {
      'title': 'Marcelo Ludovico',
      'langMenuPt': 'Brazilian Portuguese',
      'langMenuEn': 'US English',
      'langMenuIt': 'Italian',
      'homeTabAbout': 'About me',
      'homeTabSchool': 'Education',
      'homeTabExperience': 'Experience',
      'homeTabContact': 'Hire me!',
      'aboutPersonal': 'Personal',
      'aboutPersonalNameLabel': 'Name',
      'aboutPersonalNameValue': 'Marcelo Ludovico de Paula',
      'aboutPersonalAgeLabel': 'Age',
      'aboutPersonalAgeValue': '$_age',
      'aboutPersonalMissionLabel': 'Purpose',
      'aboutPersonalMissionValue': 'To find simple and creative solutions to'
          ' people\'s problems and pains',
      'aboutPersonalCitizenship': 'Brazilian, Italian',
      'aboutLocation': 'Location',
      'aboutLocationLabel': 'Country',
      'aboutLocationValue': 'Brazil',
      'aboutSkills': 'Skills',
      'aboutSkillsValues': [
        'Flutter',
        'C#',
        'PHP',
        'PostgreSQL',
        'JavaScript',
        'HTML',
        'CSS'
      ],
      'education': [
        {
          'Graduação': [
            'Ciência da Computação'
          ]
        }
      ]
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
      'aboutPersonal': 'Personale',
      'aboutPersonalNameLabel': 'Nome',
      'aboutPersonalNameValue': 'Marcelo Ludovico de Paula',
      'aboutPersonalAgeLabel': 'Età',
      'aboutPersonalAgeValue': '$_age',
      'aboutPersonalMissionLabel': 'Scopo',
      'aboutPersonalMissionValue': 'Trovare soluzione semplice e creative per'
          ' dolori e problemi delle persone',
      'aboutPersonalCitizenship': 'Brasiliano, Italiano',
      'aboutLocation': 'Luogo',
      'aboutLocationLabel': 'Paese',
      'aboutLocationValue': 'Brasile',
      'aboutSkills': 'Skills',
      'aboutSkillsValues': [
        'Flutter',
        'C#',
        'PHP',
        'PostgreSQL',
        'JavaScript',
        'HTML',
        'CSS'
      ],
      'education': [
        {
          'Graduação': [
            'Ciência da Computação'
          ]
        }
      ]
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
      'aboutPersonal': 'Pessoal',
      'aboutPersonalNameLabel': 'Nome',
      'aboutPersonalNameValue': 'Marcelo Ludovico de Paula',
      'aboutPersonalAgeLabel': 'Idade',
      'aboutPersonalAgeValue': '$_age',
      'aboutPersonalMissionLabel': 'Propósito',
      'aboutPersonalMissionValue': 'Buscar sluções simples e criativas para as'
          ' dores e problemas das pessoas',
      'aboutPersonalCitizenship': 'Brasileiro, Italiano',
      'aboutLocation': 'Local',
      'aboutLocationLabel': 'País',
      'aboutLocationValue': 'Brasil',
      'aboutSkills': 'Habilidades',
      'aboutSkillsValues': [
        'Flutter',
        'C#',
        'PHP',
        'PostgreSQL',
        'JavaScript',
        'HTML',
        'CSS'
      ],
      'education': [
        {
          'Graduação': [
            'Ciência da Computação'
          ]
        }
      ]
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

  String get aboutPersonal{
    return _localizedValues[locale.languageCode]['aboutPersonal'];
  }

  String get aboutPersonalNameLabel{
    return _localizedValues[locale.languageCode]['aboutPersonalNameLabel'];
  }

  String get aboutPersonalNameValue{
    return _localizedValues[locale.languageCode]['aboutPersonalNameValue'];
  }

  String get aboutPersonalAgeLabel{
    return _localizedValues[locale.languageCode]['aboutPersonalAgeLabel'];
  }

  String get aboutPersonalAgeValue{
    return _localizedValues[locale.languageCode]['aboutPersonalAgeValue'];
  }

  String get aboutPersonalMissionLabel{
    return _localizedValues[locale.languageCode]['aboutPersonalMissionLabel'];
  }

  String get aboutPersonalMissionValue{
    return _localizedValues[locale.languageCode]['aboutPersonalMissionValue'];
  }

  String get aboutPersonalCitizenship{
    return _localizedValues[locale.languageCode]['aboutPersonalCitizenship'];
  }

  String get aboutLocation{
    return _localizedValues[locale.languageCode]['aboutLocation'];
  }

  String get aboutLocationLabel{
    return _localizedValues[locale.languageCode]['aboutLocationLabel'];
  }

  String get aboutLocationValue{
    return _localizedValues[locale.languageCode]['aboutLocationValue'];
  }

  String get aboutSkills{
    return _localizedValues[locale.languageCode]['aboutSkills'];
  }

  List<String> get aboutSkillsValues{
    return _localizedValues[locale.languageCode]['aboutSkillsValues'];
  }

}
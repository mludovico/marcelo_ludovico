import 'package:flutter/material.dart';

class Strings {

  static Locale locale;
  static final now = DateTime.now();
  static int _age = (now.difference(DateTime.parse('1981-03-10')).inDays/365).floor();

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
      'aboutPersonalAgeValue': '$_age years old',
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
          'gradTitle': 'Bachelor',
          'courseLabel': 'Course',
          'courseName': 'Computer Science',
          'institutionLabel': 'Institution',
          'institution': 'Universidade Cruzeiro do Sul',
          'yearLabel': 'Graduation year',
          'gradYear': '2023',
        },
        {
          'gradTitle': 'MBA',
          'courseLabel': 'Course',
          'courseName': 'Project Management',
          'institutionLabel': 'Institution',
          'institution': 'Universidade São Francisco',
          'yearLabel': 'Graduation Year',
          'gradYear': '2013',
        },
        {
          'gradTitle': 'Bachelor',
          'courseLabel': 'Course',
          'courseName': 'Electronic Engineer',
          'institutionLabel': 'Institution',
          'institution': 'Universidade Paulista UNIP',
          'yearLabel': 'Graduation year',
          'gradYear': '2010',
        },
      ],
      'work': [
        {
          'workTitle': 'Flutter Developer',
          'companyLabel': 'Company',
          'company': 'Freelancer',
          'fromLabel': 'From',
          'from': '2018',
          'untilLabel': 'Until',
          'until': 'now',
          'descriptionLabel': 'Description',
          'description': 'Android and iOS app development using Flutter as main'
              ' framework from design to publishing the app on both stores'
        },
        {
          'workTitle': 'Technical Supervisor',
          'companyLabel': 'Company',
          'company': 'EPTV Campinas',
          'fromLabel': 'From',
          'from': '2014',
          'untilLabel': 'Until',
          'until': 'now',
          'descriptionLabel': 'Description',
          'description': 'Technical team supervising and software solutions'
              ' development using a wide range of technologies like C#, PHP,'
              ' JavaScript, HTML, CSS, PostgreSQL, VMWare, Docker',
        },
        {
          'workTitle': 'Engineer',
          'companyLabel': 'Company',
          'company': 'EPTV Campinas',
          'fromLabel': 'From',
          'from': '2012',
          'untilLabel': 'Until',
          'until': '2014',
          'descriptionLabel': 'Description',
          'description': 'Design and development of tech solutions using a wide'
              ' range of technologies like C#, PHP, JavaScript, HTML,'
              ' CSS, PostgreSQL and in house made electronic systems or using'
              ' ready products like RaspberryPi and Arduino',
        },
      ],
      'contacts':
      {
        'phoneLabel': 'Phone',
        'phone': '+55 (19) 996856275',
        'mail': 'maludovico@gmail.com',
        'skype': 'maludovico@msn.com',
        'linkedin': 'https://www.linkedin.com/in/marcelo-ludovico-83992931/',
        'github': 'https://github.com/mludovico'
      },
      'aboutApp': 'This app was made using Flutter with the Material and'
          ' Cupertino libraries to illustrate its use on each platform. The'
          ' views have been adaptaded for the web version of Flutter itself.',
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
      'aboutPersonalAgeValue': '$_age anni',
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
          'gradTitle': 'Laurea',
          'courseLabel': 'Corso',
          'courseName': 'Scienze Informatiche',
          'institutionLabel': 'Istituzione',
          'institution': 'Universidade Cruzeiro do Sul',
          'yearLabel': 'Anno di laurea',
          'gradYear': '2023',
        },
        {
          'gradTitle': 'MBA',
          'courseLabel': 'Corso',
          'courseName': 'Gestione di Progetti',
          'institutionLabel': 'Istituzione',
          'institution': 'Universidade São Francisco',
          'yearLabel': 'Anno di laurea',
          'gradYear': '2013',
        },
        {
          'gradTitle': 'Laurea',
          'courseLabel': 'Corso',
          'courseName': 'Ingegneria Elettronica',
          'institutionLabel': 'Istituzione',
          'institution': 'Universidade Paulista UNIP',
          'yearLabel': 'Anno di laurea',
          'gradYear': '2010',
        },
      ],
      'work': [
        {
          'workTitle': 'Sviluppatore Flutter',
          'companyLabel': 'Azienda',
          'company': 'Freelancer',
          'fromLabel': 'Da',
          'from': '2018',
          'untilLabel': 'Fino a',
          'until': 'adesso',
          'descriptionLabel': 'Descrizione',
          'description': 'Sviluppo di App Android ed iOS in Flutter dal disegno'
            ' alla publicazione sui App Store'
        },
        {
          'workTitle': 'Supervisore Tecnico',
          'companyLabel': 'Azienda',
          'company': 'EPTV Campinas',
          'fromLabel': 'Da',
          'from': '2014',
          'untilLabel': 'Fino a',
          'until': 'adesso',
          'descriptionLabel': 'Descrizione',
          'description': 'Gestione di tech team e sviluppo di soluzioni'
              ' software con l\'utilizzo di diverse tecnologie come C#, PHP,'
              ' JavaScript, HTML, CSS, PostgreSQL, VMWare, Docker',
        },
        {
          'workTitle': 'Ingegnere',
          'companyLabel': 'Azienda',
          'company': 'EPTV Campinas',
          'fromLabel': 'Da',
          'from': '2012',
          'untilLabel': 'Fino a',
          'until': '2014',
          'descriptionLabel': 'Descrizione',
          'description': 'Creazione e sviluppo di soluzioni tecniche con '
              'l\'utilizzo di diverse tecnologie come C#, PHP, JavaScript, HTML,'
              ' CSS, PostgreSQL e sistemi elettronichi propri oppure con'
              ' prodotti come RaspberryPi ed Arduino',
        },
      ],
      'contacts':
      {
        'phoneLabel': 'Telefono',
        'phone': '+55 (19) 996856275',
        'mail': 'maludovico@gmail.com',
        'skype': 'maludovico@msn.com',
        'linkedin': 'https://www.linkedin.com/in/marcelo-ludovico-83992931/',
        'github': 'https://github.com/mludovico'
      },
      'aboutApp': 'Questo app è stato fatto con l\'uso di Flutter e delle'
          ' lib Material e Cupertino per illustrare i suoi usi in ogni'
          ' piataforme. Le visualisazione sono state adattate alla versione web'
          ' dello stesso Flutter.',
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
      'aboutPersonalAgeValue': '$_age anos',
      'aboutPersonalMissionLabel': 'Propósito',
      'aboutPersonalMissionValue': 'Buscar soluções simples e criativas para as'
          ' dores e problemas das pessoas usando tecnologia',
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
          'gradTitle': 'Graduação',
          'courseLabel': 'Curso',
          'courseName': 'Ciência da Computação',
          'institutionLabel': 'Instituição',
          'institution': 'Universidade Cruzeiro do Sul',
          'yearLabel': 'Ano de conclusão',
          'gradYear': '2023',
        },
        {
          'gradTitle': 'MBA',
          'courseLabel': 'Curso',
          'courseName': 'Gestão de projetos',
          'institutionLabel': 'Instituição',
          'institution': 'Universidade São Francisco',
          'yearLabel': 'Ano de conclusão',
          'gradYear': '2013',
        },
        {
          'gradTitle': 'Graduação',
          'courseLabel': 'Curso',
          'courseName': 'Engenharia Eletrônica',
          'institutionLabel': 'Instituição',
          'institution': 'Universidade Paulista UNIP',
          'yearLabel': 'Ano de conclusão',
          'gradYear': '2010',
        },
      ],
      'work': [
        {
          'workTitle': 'Desenvolvedor Flutter',
          'companyLabel': 'Empresa',
          'company': 'Freelancer',
          'fromLabel': 'De',
          'from': '2018',
          'untilLabel': 'Até',
          'until': 'atualmente',
          'descriptionLabel': 'Descrição',
          'description': 'Desenvolvimento de aplicativos para Android e iOS em'
            ' Flutter desde o desenho até a publicação nas respectivas lojas'
        },
        {
          'workTitle': 'Supervisor Técnico',
          'companyLabel': 'Empresa',
          'company': 'EPTV Campinas',
          'fromLabel': 'De',
          'from': '2014',
          'untilLabel': 'Até',
          'until': 'atualmente',
          'descriptionLabel': 'Descrição',
          'description': 'Gestão de equipe técnica e desenvolvimento de soluções'
            ' de software utilizando diversas tecnologias como C#, PHP,'
            ' JavaScript, HTML, CSS, PostgreSQL, VMWare, Docker',
        },
        {
          'workTitle': 'Engenheiro',
          'companyLabel': 'Empresa',
          'company': 'EPTV Campinas',
          'fromLabel': 'De',
          'from': '2012',
          'untilLabel': 'Até',
          'until': '2014',
          'descriptionLabel': 'Descrição',
          'description': 'Criação e desenvolvimento de soluções técnicas'
            ' utilizando diversas tecnologias como C#, PHP, JavaScript, HTML,'
            ' CSS, PostgreSQL e sistemas eletronicos desenvolvidos na empresa'
            ' ou utilizando produtos como RaspberryPi e Arduino',
        },
      ],
      'contacts':
        {
          'phoneLabel': 'Telefone',
          'phone': '+55 (19) 996856275',
          'mail': 'maludovico@gmail.com',
          'skype': 'maludovico@msn.com',
          'linkedin': 'https://www.linkedin.com/in/marcelo-ludovico-83992931/',
          'github': 'https://github.com/mludovico'
        },
      'aboutApp': 'Este app foi desenvolvido usando Flutter com as bibliotecas '
        'Material e Cupertino para ilustrar seu uso em cada plataforma. As '
        'visualizações foram adaptadas para versão web do próprio Flutter.',
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

  List<Map> get education{
    return _localizedValues[locale.languageCode]['education'];
  }

  List<Map> get work{
    return _localizedValues[locale.languageCode]['work'];
  }

  Map get contacts{
    return _localizedValues[locale.languageCode]['contacts'];
  }

  String get aboutDialog{
    return _localizedValues[locale.languageCode]['aboutApp'];
  }

}
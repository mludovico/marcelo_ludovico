import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as Material;
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:marceloludovico/ios_theme/tabs/contact_tab.dart';
import 'package:marceloludovico/ios_theme/tabs/me_tab.dart';
import 'package:marceloludovico/ios_theme/tabs/school_tab.dart';
import 'package:marceloludovico/ios_theme/tabs/work_tab.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IosHome extends StatefulWidget {
  @override
  _IosHomeState createState() => _IosHomeState();
}

class _IosHomeState extends State<IosHome> {

  Strings _strings = Strings();
  final _pageController = PageController();
  int _page = 0;
  bool _init = false;

  @override
  Widget build(BuildContext context) {
    void _voltar (){
      Navigator.of(context).pop();
    }
    return Container(
          color: Material.Colors.grey[850],
          child: Center(
            child: Container(
                width: 600,
                color: Material.Colors.white,
                child: FutureBuilder(
                  future: Future.delayed(Duration(milliseconds: 500), ()=>_init = true),
                  builder: (context, snapshot) {
                    return !_init ?
                      Center(
                        child: CupertinoActivityIndicator(
                          animating: true,
                          radius: 25,
                        ),
                      ):
                      CupertinoTabScaffold(
                        tabBar: CupertinoTabBar(
                          onTap: (page) {
                            setState(() {
                              _page = page;
                            });
                          },
                          currentIndex: _page,
                          items: [
                            BottomNavigationBarItem(
                              icon: Icon(Material.Icons.person),
                              title: Text(_strings.homeTabAbout),
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(MdiIcons.formatListChecks),
                            title: Text(_strings.homeTabSchool),
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(MdiIcons.tie),
                              title: Text(_strings.homeTabExperience),
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(MdiIcons.handshake),
                              title: Text(_strings.homeTabContact),
                            ),
                          ]
                        ),
                        tabBuilder: (context, index) {
                          switch (index) {
                            case 0:
                              return CupertinoTabView(
                                builder: (context) =>
                                  CupertinoPageScaffold(
                                    navigationBar: _navBar(context, _voltar),
                                      child: AboutMe()
                                  )
                              );
                              break;
                            case 1:
                              return CupertinoTabView(
                                builder: (context) =>
                                  CupertinoPageScaffold(
                                    navigationBar: _navBar(context, _voltar),
                                      child: EducationTab()
                                  )
                              );
                              break;
                            case 2:
                              return CupertinoTabView(
                                builder: (context) =>
                                  CupertinoPageScaffold(
                                    navigationBar: _navBar(context, _voltar),
                                      child: WorkTab()
                                  )
                              );
                              break;
                            case 3:
                              return CupertinoTabView(
                                builder: (context) =>
                                  CupertinoPageScaffold(
                                    navigationBar: _navBar(context, _voltar),
                                      child: HireMeTab()
                                  )
                              );
                            default:
                              return null;
                          }
                        }
                    );
                  }
                )
            ),
          ),
        );
  }

  Widget _navBar(BuildContext context, Function voltar){
    return CupertinoNavigationBar(
      leading: GestureDetector(
        child: Icon(
          Material.Icons.arrow_back_ios,
          size: 25,
          color: Material.Colors.blueAccent,
        ),
        onTap: voltar
      ),
      middle: Text(_strings.title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            Strings.locale.languageCode,
            style: TextStyle(
              color: Material.Colors.blueAccent
            ),
          ),
          GestureDetector(
            child: Icon(
              Material.Icons.arrow_drop_down,
              color: Material.Colors.blueAccent,
            ),
            onTap: (){
              showCupertinoModalPopup(
                context: context,
                builder: (context){
                  return Container(
                    height: 150,
                    width: 600,
                    child: CupertinoPicker(
                      scrollController: FixedExtentScrollController(
                        initialItem: Strings.locale.languageCode == 'pt'?
                            0 : Strings.locale.languageCode == 'en' ? 1 : 2
                      ),
                      backgroundColor: Material.Colors.white,
                      itemExtent: 30,
                      onSelectedItemChanged: (index){
                        String localeCode;
                        switch(index){
                          case 0:
                            localeCode = 'pt';
                            break;
                          case 1:
                            localeCode = 'en';
                            break;
                          case 2:
                            localeCode = 'it';
                            break;
                          default:
                            localeCode = 'pt';
                        }
                        setState(() {
                          Strings.locale = Locale(localeCode);
                        });
                      },
                      children: [
                        Center(child: Text(_strings.langMenuPt)),
                        Center(child: Text(_strings.langMenuEn)),
                        Center(child: Text(_strings.langMenuIt)),
                      ]
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}

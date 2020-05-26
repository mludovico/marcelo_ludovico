import 'package:flutter/material.dart';
import 'package:marceloludovico/android_theme/tabs/contact_tab.dart';
import 'package:marceloludovico/android_theme/tabs/me_tab.dart';
import 'package:marceloludovico/android_theme/tabs/school_tab.dart';
import 'package:marceloludovico/android_theme/tabs/work_tab.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AndroidHome extends StatefulWidget {

  @override
  _AndroidHomeState createState() => _AndroidHomeState();
}

class _AndroidHomeState extends State<AndroidHome> {
  final _tabController = PageController();

  int _page = 0;
  Strings _strings = Strings();
  bool _init = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[850],
      child: Center(
        child: Container(
          width: 600,
          child: FutureBuilder(
            future: Future.delayed(Duration(milliseconds: 1500), ()=>_init = true),
            builder: (context, snapshot){
              return _init ?
                Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.pinkAccent,
                    title: Text(_strings.title),
                    centerTitle: true,
                    actions: [
                      IconButton(
                        icon: Icon(Icons.info),
                        onPressed: (){
                          showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15)
                                  )
                                ),
                                title: Text(
                                  'Marcelo Ludovico\'s Portfolio',
                                  softWrap: true,
                                ),
                                content: Builder(
                                  builder: (context) {
                                    return Container(
                                      width: 300,
                                      height: 200,
                                      child: Column(
                                        children: [
                                          Text(
                                            _strings.aboutDialog,
                                            softWrap: true,
                                            textAlign: TextAlign.justify,
                                          ),
                                          Expanded(
                                            child: Center(
                                              child: FlutterLogo(size: 80,)
                                            )
                                          )
                                        ],
                                      ),
                                    );
                                  }
                                ),
                                actions: [
                                  FlatButton(
                                    child: Text('OK'),
                                    onPressed: ()=>Navigator.of(context).pop(),
                                  )
                                ],
                              );
                            }
                          );
                        },
                      ),
                      VerticalDivider(width: 8,),
                      Center(
                        child: Text(
                          Strings.locale.languageCode.toUpperCase(),
                        )
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_drop_down),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                elevation: 2,
                                child: Container(
                                  width: 600,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ListTile(
                                          title: Text(_strings.langMenuPt),
                                          onTap: () {
                                            setState(() {
                                              Strings.locale = Locale('pt');
                                            });
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        ListTile(
                                          title: Text(_strings.langMenuEn),
                                          onTap: () {
                                            setState(() {
                                              Strings.locale = Locale('en');
                                            });
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        ListTile(
                                          title: Text(_strings.langMenuIt),
                                          onTap: () {
                                            setState(() {
                                              Strings.locale = Locale('it');
                                            });
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                          );
                        },
                      )
                    ],
                  ),
                  body: PageView(
                    onPageChanged: (page) {
                      setState(() {
                        _page = page;
                      });
                    },
                    controller: _tabController,
                    children: <Widget>[
                      AboutMe(),
                      SchoolTab(),
                      WorkExperience(),
                      ContactTab(),
                    ]
                  ),
                  bottomNavigationBar: BottomNavigationBar(
                    currentIndex: _page,
                    onTap: (page) {
                      _tabController.animateToPage(
                        page,
                        duration: Duration(milliseconds: 700),
                        curve: Curves.ease
                      );
                    },
                    items: [
                      BottomNavigationBarItem(
                        backgroundColor: Colors.pinkAccent,
                        title: Text(_strings.homeTabAbout),
                        icon: Icon(Icons.person),
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: Colors.pinkAccent,
                        title: Text(_strings.homeTabSchool),
                        icon: Icon(MdiIcons.formatListChecks),
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: Colors.pinkAccent,
                        title: Text(_strings.homeTabExperience),
                        icon: Icon(MdiIcons.tie),
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: Colors.pinkAccent,
                        title: Text(_strings.homeTabContact),
                        icon: Icon(MdiIcons.handshake),
                      ),
                    ]
                  ),
                ) :
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Container(
                      width: 300,
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.grey,
                        valueColor: AlwaysStoppedAnimation(
                          Colors.pinkAccent
                        ),
                      ),
                    ),
                  ),
                );

            }
          ),
        ),
      )
    );
  }
}

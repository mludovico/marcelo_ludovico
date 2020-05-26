import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:marceloludovico/web_no_theme/tabs/contact_tab.dart';
import 'package:marceloludovico/web_no_theme/tabs/me_tab.dart';
import 'package:marceloludovico/web_no_theme/tabs/school_tab.dart';
import 'package:marceloludovico/web_no_theme/tabs/work_tab.dart';
import 'package:marceloludovico/widgets/custom_app_bar.dart' as Custom;

class WebHome extends StatefulWidget {
  @override
  _WebHomeState createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {

  Strings _strings = Strings();
  int _currentPage = 0;
  final _pageController = PageController();
  final _aboutFocus = FocusNode(), _schoolFocus = FocusNode(),
      _experienceFocus = FocusNode(), _contactFocus = FocusNode();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _init = false, _infoVisible = false, _menuVisible = false;

  @override
  Widget build(BuildContext context){
    final _narrow = MediaQuery.of(context).size.width < 900;
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: _scaffoldKey,
      drawer: Drawer(
        child: Container(
          color: Colors.grey[800],
          width: 250,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 50),
          child: Column(
            children: [
              Container(
                height: 56,
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey[850],
              ),
              Container(
                width: 250,
                height: 56,
                child: _link(
                  focusNode: _aboutFocus,
                  title: _strings.homeTabAbout,
                  linkingPageIndex: 0,
                  pop: true,
                ),
              ),
              Container(
                width: 250,
                height: 56,
                child: _link(
                  focusNode: _schoolFocus,
                  title: _strings.homeTabSchool,
                  linkingPageIndex: 1,
                  pop: true,
                ),
              ),
              Container(
                width: 250,
                height: 56,
                child: _link(
                  focusNode: _experienceFocus,
                  title: _strings.homeTabExperience,
                  linkingPageIndex: 2,
                  pop: true,
                ),
              ),
              Container(
                width: 250,
                height: 56,
                child: _link(
                  focusNode: _contactFocus,
                  title: _strings.homeTabContact,
                  linkingPageIndex: 3,
                  pop: true,
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: Custom.CustomAppBar(
        backgroundColor: Colors.grey[800],
        automaticallyImplyLeading: false,
        leading: _narrow ? _narrowLeading() : _wideLeading(),
        title: _narrow ? _wideLeading() : _wideRow(),
        actions: [
          InkWell(
            child: Icon(Icons.info),
            onTap: (){
              setState(() {
                _infoVisible = !_infoVisible;
              });
            },
          ),
          VerticalDivider(
            width: 25,
            color: Colors.transparent,
          ),
          Center(
            child: Text(
              Strings.locale.languageCode
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_drop_down),
            onPressed: (){
              showDialog(
                context: context,
                builder: (context){
                  return Dialog(
                    elevation: 2,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 300),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Center(child: Text(_strings.langMenuPt)),
                            onTap: (){
                              setState(() {
                                Strings.locale = Locale('pt');
                              });
                              Navigator.of(context).pop();
                            },
                          ),
                          ListTile(
                            title: Center(child: Text(_strings.langMenuEn)),
                            onTap: (){
                              setState(() {
                                Strings.locale = Locale('en');
                              });
                              Navigator.of(context).pop();
                            }
                          ),
                          ListTile(
                            title: Center(child: Text(_strings.langMenuIt)),
                            onTap: (){
                              setState(() {
                                Strings.locale = Locale('it');
                              });
                              Navigator.of(context).pop();
                            }
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
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _setFocus,
            scrollDirection: Axis.vertical,
            children: [
              AboutMe(),
              EducationTab(),
              ExperienceTab(),
              ContactTab(),
            ],
          ),
          Visibility(
            visible: _infoVisible,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15)
                    ),
                    color: Colors.grey[800],
                  ),
                  margin: EdgeInsets.only(top: 8, right: 50),
                  padding: EdgeInsets.all(15),
                  width: 300,
                  height: 120,
                  child: Center(
                    child: Text(
                      _strings.aboutDialog,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }

  void _setFocus(page){
    //print(page);
    _currentPage = page;
    switch(page) {
      case 0:

        FocusScope.of(context).requestFocus(_aboutFocus);
        break;
      case 1:
        FocusScope.of(context).requestFocus(_schoolFocus);
        break;
      case 2:
        FocusScope.of(context).requestFocus(_experienceFocus);
        break;
      case 3:
        FocusScope.of(context).requestFocus(_contactFocus);
        break;
    }
  }

  Widget _wideRow(){
    return Container(
      height: 56,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _link(
            focusNode: _aboutFocus,
            title: _strings.homeTabAbout,
            linkingPageIndex: 0,
          ),
          _link(
            focusNode: _schoolFocus,
            title: _strings.homeTabSchool,
            linkingPageIndex: 1,
          ),
          _link(
            focusNode: _experienceFocus,
            title: _strings.homeTabExperience,
            linkingPageIndex: 2,
          ),
          _link(
            focusNode: _contactFocus,
            title: _strings.homeTabContact,
            linkingPageIndex: 3,
          ),
        ],
      ),
    );
  }

  Widget _wideLeading(){
    return InkWell(
      hoverColor: Colors.grey[700],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: Text(
            _strings.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17
            ),
          ),
        ),
      ),
      onTap: (){
        Navigator.of(context).pop();
      },
      focusColor: Colors.grey[700],
    );
  }

  Widget _narrowLeading(){
    return InkWell(
        hoverColor: Colors.grey[700],
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        onTap: (){
          _scaffoldKey.currentState.openDrawer();
        },
      );
  }

  Widget _link({FocusNode focusNode, String title, int linkingPageIndex, bool pop = false}){
    return InkWell(
      focusNode: focusNode,
      focusColor: Colors.grey[700],
      hoverColor: Colors.grey[700],
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 30.0
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.grey[400],
                fontSize: 15
            ),
          ),
        ),
      ),
      onTap: (){
        if(pop) Navigator.of(context).pop();
        _pageController.animateToPage(
          linkingPageIndex,
          duration: Duration(milliseconds: 700),
          curve: Curves.ease,
        );
      },
    );
  }
}

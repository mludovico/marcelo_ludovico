import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:marceloludovico/widgets/custom_app_bar.dart' as Custom;

class WebHome extends StatefulWidget {
  @override
  _WebHomeState createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {

  Strings _strings = Strings();
  final _pageController = PageController();
  final _aboutFocus = FocusNode(), _schoolFocus = FocusNode(),
      _experienceFocus = FocusNode(), _contactFocus = FocusNode();
  bool _init = false;

  @override
  Widget build(BuildContext context){
    final _narrow = MediaQuery.of(context).size.width < 680;
    _setFocus(0);
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)).then((value){
        setState(() {
          _init = true;
        });
      }),
      builder: (context, snapshot){
        if(!_init) return Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation(Colors.grey[700]),
          ),
        );
        else return Scaffold(
          appBar: Custom.CustomAppBar(
            backgroundColor: Colors.grey[800],
            automaticallyImplyLeading: false,
            leading: _narrow ? _narrowLeading() : _wideLeading(),
            title: _narrow ? _wideLeading() : _wideRow(),
            actions: [
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
          body: PageView(
            controller: _pageController,
            onPageChanged: _setFocus,
            children: [
              Container(color: Colors.red,),
              Container(color: Colors.green,),
              Container(color: Colors.yellow,),
              Container(color: Colors.blue,),
            ],
          ),
        );
      },
    );
  }

  void _setFocus(page){
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                focusNode: _aboutFocus,
                focusColor: Colors.grey[700],
                hoverColor: Colors.grey[700],
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0
                  ),
                  child: Center(
                    child: Text(
                      _strings.homeTabAbout,
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  _pageController.animateToPage(
                    0,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.ease,
                  );
                },
              ),
              InkWell(
                focusNode: _schoolFocus,
                focusColor: Colors.grey[700],
                hoverColor: Colors.grey[700],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Center(
                    child: Text(
                      _strings.homeTabSchool,
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  _pageController.animateToPage(
                    1,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.ease,
                  );
                },
              ),
              InkWell(
                focusNode: _experienceFocus,
                focusColor: Colors.grey[700],
                hoverColor: Colors.grey[700],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Center(
                    child: Text(
                      _strings.homeTabExperience,
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  _pageController.animateToPage(
                    2,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.ease,
                  );
                },
              ),
              InkWell(
                focusNode: _contactFocus,
                focusColor: Colors.grey[700],
                hoverColor: Colors.grey[700],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Center(
                    child: Text(
                      _strings.homeTabContact,
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  _pageController.animateToPage(
                    3,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.ease,
                  );
                },
              ),
            ],
          ),
        ),
      ],
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
        onTap: (){},
      );
  }
}

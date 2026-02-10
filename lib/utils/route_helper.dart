import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_app/widgets/all/rounded_button.dart';
import '../widgets/all/all_widgets.dart';
import '../widgets/all/bmi_app.dart';
import '../widgets/all/counter.dart';
import '../widgets/all/rounded_button.dart';
import '../widgets/date_time.dart';
import '../widgets/expanded_flex.dart';
import '../widgets/gridview.dart';
import '../widgets/home_screen.dart';
import '../widgets/listview_listtile.dart';
// import '../widgets/rounded_btn.dart';
import '../widgets/row_column_scroll.dart';
import '../widgets/splittingin_widget.dart';
import '../widgets/date_picker.dart';
import '../widgets/form_valid.dart';
import '../widgets/gestur_inkwell.dart';
import '../widgets/stack.dart';
import '../widgets/text_field.dart';

class RouteHelper {
  static String home = '/';
  static const String widgets = '/Widg';
  static const String bmiapp = '/BmiApp';
  static const String counter = '/Counter';
  static const String datetime = '/Datetime';
  static const String expandedflex = '/Expandedflex';
  static const String gridview = '/Gridview';
  static const String listviewtile = '/Listviewlisttile';
  static const String roundedbutton = '/RoundedButton';
  static const String rowcolscroll = '/RowColumnScroll';
  static const String datepicker = '/DatePicker';
  static const String splittinginwidget = '/Splittingapp';
  static const String formvalidate = '/FormValid';
  static const String gesturinkwell = '/GesturInkwel';
  static const String stack = '/Stackk';
  static const String textfield = '/Textfield';
  static myRoutes() => {
    // '/': (context) => HomeScreen(),
    // '/': (context) => ContainerScreen(),
    '/': (context) => HomeScreen(),
  };

  static myGenerateRoutes(RouteSettings setting){
    switch(setting.name){
      case widgets: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => Widg(name: name));
      }
      case bmiapp: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => BmiApp());
      }
      case counter: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => Counter());
      }
      case datetime: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => Datetime());
      }
      case expandedflex: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => Expandedflex());
      }
      case gridview: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => Gridview());
      }
      case listviewtile: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => Listviewlisttile());
      }
      case roundedbutton: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => RoundedButton());
      }
      case rowcolscroll: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => RowColumnScroll());
      }
      case splittinginwidget: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => Splittingapp());
      }
      case textfield: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => Textfield());
      }
      case stack: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => Stackk());
      }
      case gesturinkwell: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => GesturInkwel());
      }
      case formvalidate: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => FormValid());
      }
      case datepicker: {
        String name = setting.arguments as String;
        return MaterialPageRoute(builder: (context) => DatePicker());
      }

    }
  }
}

// main -> route_helper
// route -> MyRoutes() -> function inside class RouteHelper -> so used RouteHelper.profile/setting -> old(only '/profile'
// onGenerateRoute -> MyGenerateRoutes() -> same above
// used static with all function so -> static at declaration time
// bcz used class(RouteHelper) -> so used RouterHelper.profile instead of '/profile'
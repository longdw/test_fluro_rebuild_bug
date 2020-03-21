import 'dart:collection';

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:testrouter/application.dart';

class NavigatorUtil {

  static navigateTo(
      BuildContext context,
      String path,
      {Map<String, dynamic> params, bool replace = false, bool clearStack = false}) {
    FocusScope.of(context).unfocus();


    if (params != null) {
      String query =  "";
      int index = 0;
      for (var key in params.keys) {
        var value = Uri.encodeComponent(params[key]);
        if (index == 0) {
          query = "?";
        } else {
          query = query + "\&";
        }
        query += "$key=$value";
        index++;
      }
      path = path + query;
    }


    Application.router.navigateTo(context, path, replace: replace, clearStack: clearStack, transition: TransitionType.native);
  }
}
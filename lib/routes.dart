import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:testrouter/main.dart';
import 'package:testrouter/page1.dart';

import 'i_router_provider.dart';
import 'page2.dart';
import 'page3.dart';

/// @author longdw
/// 2020-03-19 21:39
/// www.longdw.com

class Routers {
  static String page1 = '/page1';
  static String page2 = '/page2';
  static String page3 = '/page3';

  static void configureRoutes(Router router) {

    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          debugPrint('can not find page');
          return Scaffold(
            appBar: AppBar(title: Text('no page found'),),
            body: Center(
              child: Container(
                child: Text('no page found'),
              ),
            ),
          );
        });

    router.define(page1, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {

          print('========>page1 handlerFunc execute');

          return Page1();
        }));

    router.define(page2, handler: Handler(handlerFunc: (_, params) {

      print('------>page2 handlerFunc execute');

      return Page2();
    }));

    router.define(page2, handler: Handler(handlerFunc: (_, params) {

      return Page3();
    }));
  }

}
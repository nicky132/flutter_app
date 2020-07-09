import 'package:flutter/material.dart';

import '../pages/tabs.dart';

import '../pages/getRequest.dart';
import '../pages/postRequest.dart';
import '../pages/getRequestDemo.dart';

import '../pages/http.dart';

final routes={
    '/':(context)=>Tabs(),
    '/getRequest':(context)=>GetRequest(),
    '/postRequest':(context)=>PostRequest(),
    '/getRequestDemo':(context)=>GetRequestDemo(),
    '/http':(context)=>HttpDemo(),
};

var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};
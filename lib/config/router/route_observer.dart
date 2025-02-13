import 'package:flutter/material.dart';

class RouteObservers extends NavigatorObserver {
  final List<Route<dynamic>> _routeHistory = [];

  List<Route<dynamic>> get routeHistory => _routeHistory;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _routeHistory.add(route);
    print('didPush: ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    _routeHistory.remove(route);
    print('didPop: ${route.settings.name}');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    _routeHistory.remove(route);
    print('didRemove: ${route.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (oldRoute != null) {
      _routeHistory.remove(oldRoute);
    }
    if (newRoute != null) {
      _routeHistory.add(newRoute);
    }
    print('didReplace: ${newRoute?.settings.name}');
  }
}

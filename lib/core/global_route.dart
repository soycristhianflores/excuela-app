import 'package:flutter/material.dart';

typedef PageBuilder = Widget Function();

class DefaultTransitionRoute extends PageRouteBuilder {
  DefaultTransitionRoute(PageBuilder page)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0);
            const end = Offset.zero;
            const curve = Curves.ease;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SlideTransition(
                position: animation.drive(tween), child: child);
          },
        );
}

class NoTransitionRoute extends PageRouteBuilder {
  NoTransitionRoute(PageBuilder page)
      : super(
          opaque: false,
          pageBuilder: (BuildContext context, __, ___) => page(),
          transitionsBuilder: (___, _, ____, Widget child) => child,
        );
}

class GlobalRoute {
  static GlobalKey<NavigatorState> rootNavKey = GlobalKey<NavigatorState>();
  static NavigatorState? get navigator => rootNavKey.currentState;

  ///Navigation.push() shortcut
  static void push(PageBuilder page, {bool noTransition = false}) {
    navigator?.push(
        noTransition ? NoTransitionRoute(page) : DefaultTransitionRoute(page));
  }

  ///Navigation.pushAndRemoveUntil(); shortcut
  static void pushAndReplaceAll(PageBuilder page, {bool noTransition = false}) {
    navigator?.pushAndRemoveUntil(
        noTransition ? NoTransitionRoute(page) : DefaultTransitionRoute(page),
        (route) => false);
  }

  static void replace(PageBuilder page) {
    navigator?.pushReplacement(DefaultTransitionRoute(page));
  }

  static void pop([bool? response]) {
    navigator?.pop(response);
  }
}
